/*
 * 12-bit analog 64 sample average per channel on ports A and B
 * uses the compute burst average mode threshold interrupt to auto change
 * channels during interrupt after a repeat count
 */

#include "daq.h"
#include <math.h>

typedef struct R_data { // internal variables
	adc_result_t raw_adc[ADC_BUFFER_SIZE];
	int16_t n_offset[NUM_C_SENSORS];
	uint8_t scan_index;
	uint16_t scan_select;
	bool done;
} R_data;

static volatile R_data R = {
	.done = false,
	.scan_index = 0,
	.n_offset[0] = N_OFFSET0,
	.n_offset[1] = N_OFFSET1,
};

static void adc_int_handler(void);
static void adc_int_t_handler(void);

/*
 * start computed ADC results: 64 samples per average value per selected channel from
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
	ADCC_DischargeSampleCapacitor(); // short ADC sample cap before channel sampling
	ADCC_StartConversion(R.scan_index & 0xf);
#ifdef DEBUG_DAQ1
	DEBUG1_SetHigh();
#endif
#ifdef DEBUG_DAQ2
	DEBUG2_SetHigh();
#endif
	return true;
}

/*
 * check scan done flag
 */
bool check_adc_scan(void)
{
	return R.done;
}

/*
 * clear scan done flag
 */
void clear_adc_scan(void)
{
	R.done = false;
}

/*
 * read average value of a channel after scan completion (done)
 */
adc_result_t get_raw_result(const adcc_channel_t index)
{
	return R.raw_adc[index];
}

/*
 * turn ADC values into standard program values
 */
float conv_raw_result(const adcc_channel_t chan, const adc_conv_t to_what)
{
	if (!(ADC_SCAN_CHAN >> chan & 0x1))
		return NAN;

	switch (to_what) {
	case CONV:
		if (ADC_C_CHAN >> chan & 0x1) { // current conversion
			if (ADC_C_CHAN_TYPE >> chan & 0x1) {
				return((float) (int16_t) get_raw_result(chan) - R.n_offset[0]) * C_A200;
			} else {
				return((float) (int16_t) get_raw_result(chan) - R.n_offset[1]) * C_A100;
			}
		} else {
			if (ADC_T_CHAN >> chan & 0x1) { // temp conversion
				return 25.0; // filler until sensor is selected
			} else { // voltage conversion
				return((float) get_raw_result(chan) * V_SCALE) / 1000.0;
			}
		}
		break;
	case O_CONV:
		if (ADC_C_CHAN >> chan & 0x1 || ADC_T_CHAN >> chan & 0x1)
			return((float) get_raw_result(chan) * C_SCALE) / 1000.0;

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
#ifdef DEBUG_DAQ2
	DEBUG2_Toggle();
#endif
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
#ifdef DEBUG_DAQ1
			DEBUG1_SetLow();
#endif
			return;
		}
	} while (!((R.scan_select >> R.scan_index) &0x1)); // check for analog port bit
	ADCC_DischargeSampleCapacitor(); // short ADC sample cap before next channel sampling
	ADCC_StartConversion(R.scan_index & 0xf);
#ifdef DEBUG_DAQ1
	DEBUG1_Toggle();
#endif
}
