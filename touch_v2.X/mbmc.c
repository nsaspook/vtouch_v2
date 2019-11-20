#include "mbmc.h"
#include "mcc_generated_files/ext_int.h"

extern C_data C;

struct tm t_mbmc; // don't use the xc8 clock function
volatile uint32_t utctime = 0; // utctime set from remote ntp server
volatile struct P_data P = {
	.SYSTEM_STABLE = false,
};

static void switch_handler(void);

/*
 * floating point low pass filter, 
 * slow/fast select, use (-1) to zero buffer channel and return new
 */
float lp_filter(const float new, const uint8_t bn, const int8_t slow)
{
	static float smooth[ADC_BUFFER_SIZE];
	float lp_speed;

	if (bn >= ADC_BUFFER_SIZE) // buffer index check
		return new;

	if (slow == (-1)) { // reset smooth buffer and return original value
		smooth[bn] = 0.0;
		return new;
	}

	if (slow) { // some random filter cutoffs
		lp_speed = 0.066;
	} else {
		lp_speed = 0.125;
	}

	return smooth[bn] = smooth[bn] + ((new - smooth[bn]) * lp_speed);
}

void convert_adc_data(void)
{
	uint8_t i = 0;

	do {
#ifdef CALIB
		C.calc[i] = lp_filter(conv_raw_result(i, O_CONV), i, true);
#else
		C.calc[i] = lp_filter(conv_raw_result(i, CONV), i, false);
#endif
	} while (++i < ADC_BUFFER_SIZE);
}

void switch_handler(void)
{
#ifdef DEBUG_SWH1
	DEBUG1_Toggle();
	DEBUG2_Toggle();
	
#endif
}

void start_switch_handler(void)
{
	EXT_INT1_InterruptDisable();
	INT1_SetInterruptHandler(switch_handler);
	EXT_INT1_InterruptEnable();
}
