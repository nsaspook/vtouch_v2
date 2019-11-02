#include "daq.h"

typedef struct R_data { // set only in adc interrupt
	adc_result_t raw_adc[0x0F];
	uint8_t scan_index;
	bool done;
} R_data;

volatile R_data R = {
	.done = false,
	.scan_index = 0,
};

static void adc_int_handler(void);
static void adc_int_t_handler(void);

bool start_adc_scan(void)
{
	if (R.done)
		return false;

	R.scan_index = 0;
	ADCC_SetADIInterruptHandler(adc_int_handler);
	ADCC_SetADTIInterruptHandler(adc_int_t_handler);
	ADCC_StartConversion(R.scan_index & 0xf);
	DEBUG1_SetHigh();
	DEBUG2_SetHigh();
	return true;
}

bool check_adc_scan(void)
{
	return R.done;
}

void clear_adc_scan(void)
{
	R.done = false;
}

static void adc_int_handler(void)
{
	DEBUG2_Toggle();
}

adc_result_t get_raw_result(adcc_channel_t index)
{
	return R.raw_adc[index];
}

static void adc_int_t_handler(void)
{
	R.raw_adc[R.scan_index] = ((adc_result_t) ((ADFLTRH << 8) + ADFLTRL));
	if (R.scan_index >= LAST_ADC_CHAN) {
		R.done = true;
		DEBUG1_SetLow();
	} else {
		R.scan_index++;
		ADCC_StartConversion(R.scan_index & 0xf);
		DEBUG1_Toggle();
	}
}
