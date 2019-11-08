#include "mbmc.h"

extern C_data C;

/*
 * floating point low pass filter, 
 * slow/fast select, use (-1) to zero buffer channel and return new
 */
float lp_filter(float new, uint8_t bn, int8_t slow)
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
		lp_speed = 0.333;
	}

	return smooth[bn] = smooth[bn] + ((new - smooth[bn]) * lp_speed);
}

void convert_adc_data(void)
{
	uint8_t i = 0;

	do {
		C.calc[i] = lp_filter(conv_raw_result(i, CONV), i, false);
	} while (++i < ADC_BUFFER_SIZE);
}
