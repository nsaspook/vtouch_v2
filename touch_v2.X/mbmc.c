#include "mbmc.h"
#include "mcc_generated_files/ext_int.h"
#include "bsoc.h"

extern C_data C;
extern V_data V;

struct tm t_mbmc; // don't use the xc8 clock function
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
		C.c_bat = C.calc[C_BATT];
		C.bc_ror = C.c_bat - bcror;
		bcror = C.c_bat;
		C.c_pv = C.calc[C_PV];
		C.v_bat = C.calc[V_BAT];
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
}

void set_load_relay_one(bool mode)
{
	RELAYL1_LAT = mode;
}

void set_load_relay_two(bool mode)
{
	RELAYL2_LAT = mode;
}

/* Misc ACSII spinner character generator, stores position for each shape */
char spinners(uint8_t shape, uint8_t reset)
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
 */
bool check_day_time(void)
{
	static uint8_t day_delay = 0;

	if (!day_delay++) {
		if (!C.day) {
			if (conv_raw_result(V_LIGHT_SENSOR, CONV) > DAWN_VOLTS) {
				C.day = true;
				C.day_start = V.ticks;
				return true;
			}
		} else {
			if (conv_raw_result(V_LIGHT_SENSOR, CONV) < DUSK_VOLTS) {
				C.day = false;
				C.day_end = V.ticks;
				return true;
			}
		}
	}
	if (day_delay >= 250)
		day_delay = 0;
	return false;
}
