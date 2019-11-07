/*
 * 12-bit analog 32 sample average per channel on ports A and B
 * uses the compute burst average mode threshold interrupt to auto change
 * channels during interrupt after a repeat count
 */

#include "daq.h"

typedef struct R_data { // internal variables
	adc_result_t raw_adc[ADC_BUFFER_SIZE];
	uint8_t scan_index;
	uint16_t scan_select;
	bool done;
} R_data;

static volatile R_data R = {
	.done = false,
	.scan_index = 0,
};

static void adc_int_handler(void);
static void adc_int_t_handler(void);

/*
 * start computed ADC results: 32 samples per average value per selected channel from
 * AN channel zero to LAST_ADC_CHAN
 * check_adc_scan returns true when sequence is complete
 */
bool start_adc_scan(void)
{
	if (R.done)
		return false;

	R.scan_index = 0;
	R.scan_select = (uint16_t) ((ANSELB << 8) + ANSELA) & ADC_SCAN_CHAN; // skip digital pins PORT A and B
	ADCC_SetADIInterruptHandler(adc_int_handler);
	ADCC_SetADTIInterruptHandler(adc_int_t_handler);
	ADCC_StartConversion(R.scan_index & 0xf);
	DEBUG1_SetHigh();
	DEBUG2_SetHigh();
	return true;
}

/*
 * check done flag
 */
bool check_adc_scan(void)
{
	return R.done;
}

/*
 * clear done flag
 */
void clear_adc_scan(void)
{
	R.done = false;
}

/*
 * read average value of a channel after scan completion (done)
 */
adc_result_t get_raw_result(adcc_channel_t index)
{
	return R.raw_adc[index];
}

/*
 * turn ADC values into standard program values
 */
float conv_raw_result(adcc_channel_t chan, adc_conv_t to_what)
{
	switch (to_what) {
	case T_CONV:
		return 25.0;
		break;
	case C_CONV1:
		return(((float) get_raw_result(chan) * C_SCALE) - C_OFFSET1) * C_A100 / 1000.0;
		break;
	case C_CONV2:
		return(((float) get_raw_result(chan) * C_SCALE) - C_OFFSET2) * C_A200 / 1000.0;
		break;
	case V_CONV:
		return((float) get_raw_result(chan) * V_SCALE) / 1000.0;
		break;
	default:
		return 0.0;
		break;
	}
	return 0.0;
}

/*
 * ADC per conversion interrupt
 */
static void adc_int_handler(void)
{
	DEBUG2_Toggle();
}

/*
 * ADC per channel average interrupt
 */
static void adc_int_t_handler(void)
{
	/*
	 * use the filter result buffer for raw adc data
	 */
	R.raw_adc[R.scan_index] = ((adc_result_t) ((ADFLTRH << 8) + ADFLTRL));
	do {
		if (++R.scan_index > LAST_ADC_CHAN) {
			R.done = true;
			DEBUG1_SetLow();
			return;
		}
	} while (!((R.scan_select >> R.scan_index) &0x01)); // check for analog port bit
	ADCC_StartConversion(R.scan_index & 0xf);
	DEBUG1_Toggle();
}
