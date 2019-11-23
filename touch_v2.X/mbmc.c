#include "mbmc.h"
#include "mcc_generated_files/ext_int.h"

extern C_data C;
extern V_data V;

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

/*
 * return the current actual state of x switch
 * the actual current state of a switch is ONLY changed in the interrupt handler
 */
SW_STATES get_switch(uint8_t i)
{
	if (i >= NUM_SWITCHES)
		return SW_OFF;

	return V.button[i].sw;
}

/*
 * return the x switch structure
 */
rbutton_type get_switch_data(uint8_t i)
{
	if (i >= NUM_SWITCHES)
		return V.button[SNULL];

	return V.button[i];
}

/*
 * check the switch pressed bitmap for button presses, the actual current switch state might differ
 */
uint8_t check_switches(void)
{
	return V.sw_bitmap;
}

/*
 * clear X switch pressed and time pressed data
 */
void clear_switch(uint8_t i)
{
	if (i >= NUM_SWITCHES)
		return;

	V.button[i].count = 0;
	V.sw_bitmap &= ~(1 << i); //clear switch pressed bit
}

void switch_handler(void)
{
	uint8_t i = 0, sw_value;

	/*
	 * enable the outputs for reading and reset MAX Change-of-State pin
	 */
	MAX_EN_SetLow();

#ifdef DEBUG_SWH1
	DEBUG1_SetHigh();
#endif

	// Nop for MAX chip output Propagation Delay after enable
	Nop();
	Nop();
	Nop();
	// start reading the various pic port input bits after the max chip is ready
	do {
		switch (i) {
		case SENTER:
			sw_value = ENTER_B_GetValue();
			break;
		case SSELECT:
			sw_value = SELECT_B_GetValue();
			break;
		case S1:
			sw_value = IO_RF1_GetValue();
			break;
		case S0:
			sw_value = IO_RF0_GetValue();
			break;
		default:
			sw_value = 1;
			break;
		}

		// update actual current button state
		if (sw_value) {
			if (V.button[i].sw == SW_ON) {
				V.button[i].sw = SW_OFF;
			}
		} else {
			if (V.button[i].sw == SW_OFF) {
				V.button[i].sw = SW_ON;
				V.button[i].count = V.timerint_count; // so we can check button SW_ON duration
				V.sw_bitmap |= 1 << i; // set switch pressed bit
			}
		}
	} while (++i < NUM_SWITCHES);

#ifdef DEBUG_SWH1
	DEBUG1_SetLow();
#endif
#ifdef DEBUG_SWH2
	DEBUG2_Toggle();
#endif

	MAX_EN_SetHigh(); // disable MAX output pins
}

void start_switch_handler(void)
{
	EXT_INT1_InterruptDisable();
	INT1_SetInterruptHandler(switch_handler);
	V.button[SNULL].sw = SW_INVALID; // set a error condition for invalid button number
	EXT_INT1_InterruptEnable();
}
