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

	if (slow) { // some random filter cutoffs
		lp_speed = 0.033;
	} else {
		lp_speed = 0.125;
	}

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
	stop_bsoc();

	if (!V.calib) {
		C.c_bat = C.calc[C_BATT];
		C.c_pv = C.calc[C_PV];
		C.v_bat = C.calc[V_BAT];
		C.v_pv = C.calc[V_PV];
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
 * boot battery condition defaults
 */
void static_soc(void)
{
	C.runtime = 120;
	C.soc = 100;
	C.dynamic_ah = C.bank_ah;
}
