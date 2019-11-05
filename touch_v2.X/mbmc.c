#include "mbmc.h"

float lp_filter(float new, uint8_t bn, int8_t slow) // low pass filter, slow rate of change for new, LPCHANC channels, slow/fast select (-1) to zero channel
{
	static float smooth[ADC_BUFFER_SIZE], lp_speed, lp_x;

	if (bn > ADC_BUFFER_SIZE)
		return new;
	if (slow == (-1)) { // reset smooth buffer and return original value
		smooth[bn] = 0.0;
		return new;
	}
	if (slow) {
		lp_speed = 0.066;
	} else {
		lp_speed = 0.333;
	}
	lp_x = ((smooth[bn]*1000.0) + (((new * 1000.0)-(smooth[bn]*1000.0)) * lp_speed)) / 1000.0;
	smooth[bn] = lp_x;
	return lp_x;
}
