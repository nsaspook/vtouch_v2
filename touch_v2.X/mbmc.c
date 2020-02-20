#include "mbmc.h"
#include "mcc_generated_files/ext_int.h"
#include "bsoc.h"

extern C_data C;
extern V_data V;

struct tm *t_mbmc; // don't use the xc8 clock function, time will be saved in the history structure
volatile uint32_t utctime = 0; // utctime set from remote ntp server
volatile struct P_data P = {
	.SYSTEM_STABLE = false,
};

/* spinner defines */
#define MAX_SHAPES  6
const char spin[MAX_SHAPES][20] = {
	"||//--", // classic LCD version with no \ character
	"||//--\\\\", // classic
	"OOOOOO--__-", // eye blink
	"vv<<^^>>", // point spinner
	"..**x#x#XX||--", // warp portal
	"..ooOOoo" // ball bouncer
};

/*
 * floating point low pass filter, 
 * slow/fast select, use (-1) to zero buffer channel and return new
 */
float lp_filter(const float new, const uint8_t bn, const int8_t slow)
{
	static float smooth[LP_BUFFER_SIZE];
	float lp_speed;

	if (bn >= LP_BUFFER_SIZE) // buffer index check
		return new;

	if (slow == (-1)) { // reset smooth buffer and return original value
		smooth[bn] = 0.0;
		return new;
	}

	if (slow) { // some random filter cutoffs beta values
		lp_speed = 0.033;
	} else {
		lp_speed = 0.066;
	}
	// exponentially weighted moving average
	return smooth[bn] = smooth[bn] + ((new - smooth[bn]) * lp_speed);
}

void convert_adc_data(void)
{
	uint8_t i = 0;

	do {
		if (V.calib) {
			C.calc[i] = lp_filter(conv_raw_result(i, O_CONV), i, true);
		} else {
			C.calc[i] = lp_filter(conv_raw_result(i, CONV), i, false);
		}
	} while (++i < ADC_BUFFER_SIZE);
}

/*
 * buffer model data from DAQ
 */
void calc_model_data(void)
{
	static float bvror = 0.0, bcror = 0.0;
	stop_bsoc();

	if (!V.calib) {
		C.updates++;
		C.c_bat = C.calc[C_BATT];
		C.bc_ror = C.c_bat - bcror;
		bcror = C.c_bat;
		C.c_pv = C.calc[C_PV];
		C.v_bat = C.calc[V_BAT];
		C.v_sensor = C.calc[V_LIGHT_SENSOR];
		C.bv_ror = C.v_bat - bvror;
		bvror = C.v_bat;
		C.v_pv = C.calc[V_PV];
		C.v_cc = C.calc[V_CC];
		C.v_inverter = C.calc[V_INVERTER];
		C.c_load = lp_filter(C.calc[C_PV]+(-(C.calc[C_BATT])), 16, true);
		C.p_load = lp_filter(C.c_load * C.v_bat, 17, true);
		C.p_pv = lp_filter(C.c_pv * C.v_pv, 18, true);
		C.p_inverter = lp_filter((C.c_load * C.v_inverter) - STATIC_LOAD_POWER, 19, true);
		C.p_bat = lp_filter(C.c_bat * C.v_bat, 20, true);
		/*
		 * calculation limits
		 */
		if (C.p_inverter < 0.0)
			C.p_inverter = 0.0001;
	}
	start_bsoc();
	C.update = true;
}

/*
 * find rate of change of battery voltage under load
 */
void calc_ror_data(void)
{
	static float bvror = 0.0, bcror = 0.0; // must remember prior values

	C.bc_ror = fabs(conv_raw_result(C_BATT, CONV) - bcror);
	bcror = conv_raw_result(C_BATT, CONV);
	C.bv_ror = fabs(conv_raw_result(V_BAT, CONV) - bvror);
	if (C.bv_ror < ROR_LIMIT_NOISE) // skip noise values
		C.bv_ror = ROR_LIMIT_LOW + ROR_LIMIT_SET; // keep trying value
	bvror = conv_raw_result(V_BAT, CONV);
}

/*
 * boot battery condition defaults
 */
void static_soc(void)
{
	C.runtime = 120;
	C.soc = 100;
	C.dynamic_ah = C.bank_ah;
	C.dynamic_ah_adj = C.dynamic_ah;
}

void set_load_relay_one(const bool mode)
{
	RELAYL1_LAT = mode;
}

void set_load_relay_two(const bool mode)
{
	RELAYL2_LAT = mode;
}

void set_ac_charger_relay(const bool mode)
{
	AC_CHARGER_LAT = mode;
}

bool get_ac_charger_relay(void)
{
	return AC_CHARGER_LAT;
}

/* Misc ACSII spinner character generator, stores position for each shape */
char spinners(uint8_t shape, const uint8_t reset)
{
	static uint8_t s[MAX_SHAPES];
	char c;

	if (shape > (MAX_SHAPES - 1))
		shape = 0;
	if (reset)
		s[shape] = 0;
	c = spin[shape][s[shape]];
	if (++s[shape] >= strlen(spin[shape]))
		s[shape] = 0;
	return c;
}

/*
 * should be called every second in the time keeper task
 * returns true at dusk or dawn switch-over
 * checks for EEPROM updates with 24hr history
 */
bool check_day_time(void)
{
	static uint8_t day_delay = 0;
	float light;

	light = conv_raw_result(V_LIGHT_SENSOR, CONV);
	/*
	 * history eeprom update
	 */
	if (C.day_update) {
		if (time(NULL) >= C.day_update) {
			C.day_update = 0; // set to trigger time to false
			C.dupdate = true; // trigger a EEPROM history write
		}
	}

	if (!day_delay++ && V.system_stable) {
		if (C.soc > SOC_CRITICAL) {
			if (!C.day) {
				if (light > DAWN_VOLTS) {
					C.day = true;
					C.day_start = time(NULL);
					if (get_ac_charger_relay()) { // USE PV charging during the day
						set_ac_charger_relay(false);
					}
					return true;
				}
			} else {
				if (light < DUSK_VOLTS) {
					C.day = false;
					C.day_end = time(NULL);
					C.day_update = C.day_end + DUPDATE; // set up trigger time
					/*
					 * at low battery condition charge with AC at night
					 */
					if ((C.soc < SOC_TOO_LOW)) {
						set_ac_charger_relay(true);
					}
					return true;
				}
			}
		} else {
			if (C.p_pv < C.p_inverter) { // see if PV can raise SOC
				if (!get_ac_charger_relay()) { // USE AC charger
					set_ac_charger_relay(true);
				}
			}
		}
	}
	if (day_delay >= DAY_DELAY)
		day_delay = 0;
	return false;
}

/*
 * calculate history data buffer from current program data
 */
void load_hist_data(void)
{
	int16_t esr_rescale;

	stop_bsoc();
	esr_rescale = (int16_t) (C.esr * 1000.0);
	C.hist[0].updates++;
	C.hist[0].h[12] += C.pvkw;
	C.hist[0].h[11]++;
	if (esr_rescale > C.hist[0].h[10])
		C.hist[0].h[10] = esr_rescale;
	if (esr_rescale < C.hist[0].h[9])
		C.hist[0].h[9] = esr_rescale;
	C.hist[0].h[8] = C.bv_one_load * 100.0;
	C.hist[0].h[7] = C.bv_full_load * 100.0;
	C.hist[0].h[6] = C.dynamic_ah;
	C.hist[0].h[5] = C.bkwi;
	C.hist[0].h[4] = C.bkwo;
	C.hist[0].h[3] = C.pv_ah;
	C.hist[0].h[0] = C.dynamic_ah_adj;
	C.hist[0].pclock = time(NULL);
	C.dynamic_ah = 0.0;
	C.dynamic_ah_adj = 0.0;
	C.pvkw = 0.0;
	start_bsoc();
}

time_t time(time_t * t)
{
	static time_t current_time;
	PIE8bits.TMR5IE = 0;
	current_time = V.ticks;
	PIE8bits.TMR5IE = 1;
	if (t) {
		t = &current_time;
	}
	return current_time;
}

void set_time(time_t t)
{
	PIE8bits.TMR5IE = 0;
	V.ticks = t;
	PIE8bits.TMR5IE = 1;
}
