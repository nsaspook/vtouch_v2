/*
 * 12-bit analog 64 sample average per channel on ports A and B
 * uses the compute burst average mode threshold interrupt to auto change
 * channels during interrupt after a repeat count
 */

#include <pic18f57k42.h>

#include "daq.h"

typedef struct D_data {
	uint8_t dac0 : 8;
	uint8_t dac1 : 4;
	uint8_t cont : 4;
} D_data;

union bytes2 {
	uint16_t ld;
	uint8_t bd[2];
};

union dac_buf_type {
	uint16_t ld;
	uint8_t bd[2];
	struct D_data map;
};

typedef struct R_data { // internal variables
	adc_result_t raw_adc[ADC_BUFFER_SIZE];
	adc_result_t raw_dac[DAC_BUFFER_SIZE];
	union dac_buf_type max5322_cmd;
	int16_t n_offset[NUM_C_SENSORS];
	float n_scalar[NUM_C_SENSORS];
	uint8_t scan_index;
	uint16_t scan_select;
	bool done;
	hist_type H;
	uint8_t hist_save : 1;
	uint8_t hist_update : 1;
	uint8_t c_zero_cal : 1;
	uint8_t c_scale_cal : 1;
	uint16_t checkmark;
	uint8_t crc;
} R_data;

static volatile R_data R = {
	.done = false,
	.scan_index = 0,
	.n_offset[A200] = C_OFFSET200,
	.n_offset[A100] = C_OFFSET100,
	.n_scalar[A200] = C_A200,
	.n_scalar[A100] = C_A100,
	.raw_dac[DCHAN_A] = 0x0,
	.raw_dac[DCHAN_B] = 0x0,
	.checkmark = EE_CHECKMARK,
	.crc = TATE,
	.c_scale_cal = false,
	.c_zero_cal = false,
	.hist_save = false,
	.hist_update = false,
};

static void adc_int_handler(void);
static void adc_int_t_handler(void);
static bool check_range(int16_t, int16_t, int16_t);

static R_data r_cal;

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
 * update the raw adc values
 */
bool update_adc_result(void)
{
	if (R.done) {
		clear_adc_scan();
		start_adc_scan();
		StartTimer(TMR_ADC, ADC_SCAN_SPEED);
		while (!TimerDone(TMR_ADC) && !check_adc_scan());
		return true;
	} else {
		return false;
	}
}

/*
 * read average value of a channel after scan completion (done)
 */
adc_result_t get_raw_result(const adcc_channel_t index)
{
	static adc_result_t raw_result;

	PIE1bits.ADIE = 0; // stop ADC interrupt value updates
	PIE1bits.ADTIE = 0; // while getting raw values
	raw_result = R.raw_adc[index];
	PIE1bits.ADIE = 1; // restore ADC enables
	PIE1bits.ADTIE = 1;

	return raw_result;
}

/*
 * turn ADC values into standard program values
 */
float conv_raw_result(const adcc_channel_t chan, const adc_conv_t to_what)
{

	switch (to_what) {
	case CONV:
		if (!(ADC_SCAN_CHAN >> chan & 0x1))
			return NAN;

		if (ADC_C_CHAN >> chan & 0x1) { // current conversion
			if (ADC_C_CHAN_TYPE >> chan & 0x1) {
				return((float) ((int16_t) get_raw_result(chan)) - R.n_offset[A200]) * R.n_scalar[A200];
			} else {
				return((float) ((int16_t) get_raw_result(chan)) - R.n_offset[A100]) * R.n_scalar[A100];
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

/*
 * set == true, set dac spi params
 * set == false restore default spi params
 */
void dac_spi_control(bool set)
{
	static bool init = false;
	static uint8_t S0, S1, S2, SC, SB; // SPI device status backup

	if (set) {
		SPI1CON0bits.EN = 0;
		if (!init) {
			init = true;
			S0 = SPI1CON0;
			S1 = SPI1CON1;
			S2 = SPI1CON2;
			SC = SPI1CLK;
			SB = SPI1BAUD;
		}
		/*
		 * set DAC SPI mode, speed and fifo 
		 */
		// mode 1
		SPI1CON1 = 0x00;
		SPI1CON1bits.CKE = 1;
		SPI1CON1bits.CKP = 0;
		SPI1CON1bits.SMP = 0;
		// SSET disabled; RXR suspended if the RxFIFO is full; TXR required for a transfer; 
		SPI1CON2 = 0x03;
		// BAUD 0; 
		SPI1BAUD = 0x0f; // 2MHz SCK
		// CLKSEL FOSC; 
		SPI1CLK = 0x00;
		// BMODE every byte; LSBF MSb first; EN enabled; MST bus master; 
		SPI1CON0 = 0x83;
		SPI1CON0bits.EN = 1;
	} else {
		if (init) {
			/*
			 * restore default SPI mode
			 */
			SPI1CON0bits.EN = 0;
			SPI1CON1 = S1;
			SPI1CON2 = S2;
			SPI1CLK = SC;
			SPI1BAUD = SB;
			SPI1CON0 = S0;
			SPI1CON0bits.EN = 1;
		}
	}
}

void set_dac(void)
{
	while (!SPI1STATUSbits.TXBE); // wait until TX buffer is empty
	CSB_SetHigh();
	CS_SDCARD_SetHigh();
	dac_spi_control(true);
	R.max5322_cmd.map.dac0 = R.raw_dac[DCHAN_A]&0xff;
	R.max5322_cmd.map.dac1 = (R.raw_dac[DCHAN_A] >> 8) &0xf;
	R.max5322_cmd.map.cont = DAC_LOAD_A; // update DAC A @ registers
	DAC_CS0_SetLow();
	SPI1_Exchange8bit(R.max5322_cmd.bd[1]);
	SPI1_Exchange8bit(R.max5322_cmd.bd[0]);
	DAC_CS0_SetHigh();
	R.max5322_cmd.map.dac0 = R.raw_dac[DCHAN_B]&0xff;
	R.max5322_cmd.map.dac1 = (R.raw_dac[DCHAN_B] >> 8) &0xf;
	R.max5322_cmd.map.cont = DAC_LOAD_B; // update DAC B @ registers
	DAC_CS0_SetLow();
	SPI1_Exchange8bit(R.max5322_cmd.bd[1]);
	SPI1_Exchange8bit(R.max5322_cmd.bd[0]);
	while (!SPI1STATUSbits.TXBE); // wait until TX buffer is empty
	DAC_CS0_SetHigh();
	dac_spi_control(false);
}

static uint16_t convert_dac_raw(float voltage)
{
	/*
	 * check limits
	 */
	if (voltage < 0.001)
		voltage = 0.001;
	if (voltage > 10.0)
		voltage = 10.0;
	/*
	 * scale to DAC units
	 */
	return(uint16_t) (voltage / DAC_SCALE);
}

/*
 * 0.0 to 10.0 volts
 */
uint16_t set_dac_a(const float voltage)
{
	R.raw_dac[DCHAN_A] = convert_dac_raw(voltage);
	return R.raw_dac[DCHAN_A];
}

/*
 * 0.0 to 10.0 volts
 */
uint16_t set_dac_b(const float voltage)
{
	R.raw_dac[DCHAN_B] = convert_dac_raw(voltage);
	return R.raw_dac[DCHAN_B];
}

/*
 * sanity check values in a range
 */
static bool check_range(const int16_t value, const int16_t window, const int16_t standard)
{
	if (value > (standard + window))
		return false;
	if (value < (standard - window))
		return false;
	return true;
}

/*
 * mode set to false for check values only, do not update
 */
bool cal_current_zero(const bool mode, const int16_t cb, const int16_t cp)
{

	if (!check_range(cb, ZERO_RANGE, C_CAL_ZERO))
		return false;

	if (!check_range(cp, ZERO_RANGE, C_CAL_ZERO))
		return false;

	if (!mode)
		return true;

	R.n_offset[A200] = cb;
	R.n_offset[A100] = cp;
	R.c_zero_cal = true;
	return true;
}

/*
 * update internal current scaling using a calibrated 10A flow in both sensors
 */
bool cal_current_10A(const bool mode, const int16_t cb, const int16_t cp, const float scaleb, const float scalep)
{
	if (!check_range(cb, TEN_A_RANGE, C_CAL_A200))
		return false;

	if (!check_range(cp, TEN_A_RANGE, C_CAL_A100))
		return false;

	if (!mode)
		return true;

	R.n_scalar[A200] = scaleb;
	R.n_scalar[A100] = scalep;
	R.c_scale_cal = true;
	return true;
}

/*
 * read eeprom into temp program variable buffer
 */
bool read_cal_data(void)
{
	uint16_t x = 0, y;
	uint8_t *r_cal_ptr, crcVal_save;

	y = sizeof(r_cal);
	r_cal_ptr = (uint8_t*) & r_cal;
	// Initialize the CRC module
	CRC_Initialize();

	// Start CRC
	CRC_Start();

	do {
		r_cal_ptr[x] = DATAEE_ReadByte(x);
	} while (++x < y);
	crcVal_save = r_cal.crc;

	if (r_cal.checkmark == EE_CHECKMARK) {
		r_cal.crc = TATE; // standard CRC filler code
		x = 0;

		do {
			CRC_8BitDataWrite(r_cal_ptr[x]);
			while (CRC_IsBusy());
		} while (++x < y);
		if (CRC_CalculatedResultGet(NORMAL, 0x00) != crcVal_save)
			return false;
	} else {
		return false;
	}
	r_cal.crc = crcVal_save; // reload actual eeprom CRC 
	return true;
}

/*
 * write program variables to eeprom
 */
void write_cal_data(void)
{
	uint16_t x = 0, y;
	uint8_t *r_cal_ptr, crcVal;

	y = sizeof(R);
	R.crc = TATE;
	r_cal_ptr = (uint8_t*) & R;
	R.checkmark = EE_CHECKMARK;
	// Initialize the CRC module
	CRC_Initialize();

	// Start CRC
	CRC_Start();

	do {
		DATAEE_WriteByte(x, r_cal_ptr[x]);
		CRC_8BitDataWrite(r_cal_ptr[x]);
		while (CRC_IsBusy());
	} while (++x < y);
	// Read CRC check value
	crcVal = CRC_CalculatedResultGet(NORMAL, 0x00);
	// store crc in EEPROM
	DATAEE_WriteByte(sizeof(R) - 1, crcVal);
}

/*
 * copy program variable buffer into active variable
 */
void update_cal_data(void)
{
	R = r_cal;
	if (!R.c_zero_cal) {
		R.n_offset[A200] = C_OFFSET200;
		R.n_offset[A100] = C_OFFSET100;

	}

	if (!R.c_scale_cal) {
		R.n_scalar[A200] = C_A200;
		R.n_scalar[A100] = C_A100;
	}
}

/*
 * mode true: copy local hist data to operational history
 * mode false: copy operational history to local buffer
 */
bool update_hist_data(const bool mode, volatile hist_type *hist)
{
	if (hist == NULL)
		return false;

	if (mode) {
		if (R.hist_save) {
			*hist = R.H;
			if (R.hist_update) { // we should have a valid history time to load
				return true;
			}
		}
	} else {
		R.H = *hist;
		R.hist_save = true;
	}
	return false;
}

void set_hist_flag(void)
{
	R.hist_update = true;
}
