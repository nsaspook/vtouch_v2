#include "dio.h"
#include "mcc_generated_files/ext_int.h"

typedef struct S_data { // switch control data structure 
	volatile rbutton_type button[MAX_BUTTONS];
	volatile uint8_t sw_bitmap;
} S_data;

static S_data S;
extern V_data V;

static void switch_handler(void);

/*
 * return the current actual state of x switch
 * the actual current state of a switch is ONLY changed in the interrupt handler
 */
SW_STATES get_switch(uint8_t i)
{
	if (i >= NUM_SWITCHES)
		return SW_OFF;

	return S.button[i].sw;
}

/*
 * return the x switch structure
 * mainly for testing
 */
rbutton_type get_switch_data(uint8_t i)
{
	if (i >= NUM_SWITCHES)
		return S.button[SNULL];

	return S.button[i];
}

/*
 * check the switch pressed bitmap for button presses, the actual current switch state might differ
 */
uint8_t check_switches(void)
{
	return S.sw_bitmap;
}

/*
 * clear X switch pressed and time pressed data
 */
void clear_switch(uint8_t i)
{
	if (i >= NUM_SWITCHES)
		return;

	S.button[i].count = 0;
	S.sw_bitmap &= ~(1 << i); //clear switch pressed bit
}

void switch_handler(void)
{
	uint8_t i = 0, sw_value;

	/*
	 * enable the outputs for reading and reset MAX Change-of-State pin
	 */
	MAX_EN_SetLow(); // rev 1.0 board, wire patch
	MAX_EN1_SetLow(); // rev 1.1+ board

#ifdef DEBUG_SWH1
	DEBUG1_SetHigh();
#endif

	// Nop for MAX chip output Propagation Delay after enable
	Nop();
	Nop();
	Nop();
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
			if (S.button[i].sw == SW_ON) {
				S.button[i].sw = SW_OFF;
			}
		} else {
			if (S.button[i].sw == SW_OFF) {
				S.button[i].sw = SW_ON;
				S.button[i].count = V.timerint_count; // so we can check button SW_ON duration
				S.sw_bitmap |= 1 << i; // set switch pressed bit
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
	MAX_EN1_SetHigh(); // disable MAX output pins
}

void start_switch_handler(void)
{
	EXT_INT1_InterruptDisable();
	INT1_SetInterruptHandler(switch_handler);
	S.button[SNULL].sw = SW_INVALID; // set a error condition for invalid button number
	EXT_INT1_InterruptEnable();
}
