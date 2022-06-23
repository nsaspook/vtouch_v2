#include "isr_func.h"

extern V_data V;
extern volatile C_data C;
extern volatile uint16_t tickCount[TMR_COUNT];
/*
 * TMR5 interrupt
 */
void t5_isr(void)
{
	SLED = (uint8_t) ~SLED;
	V.timerint_count++;
	V.ticks++;
	check_day_time();
	V.ticker = 0;

	if (RELAYL1_PORT || RELAYL2_PORT) {
		if (++V.wdt_ticks > MAX_LOAD_TIME) {
			while (1) { // shutdown load relays and lockup for WDT to reboot
				RELAYL1_SetLow();
				DEBUG2_Toggle();
				RELAYL2_SetLow();
				DEBUG1_Toggle();
				SLED = (uint8_t) ~SLED;
			};
		}
	} else {
		V.wdt_ticks = 0;
	}
}

void t6_isr(void)
{
	static uint8_t i, j = 0;
	// add your TMR6 interrupt custom code
	// or set custom function using TMR6_SetInterruptHandler()

	//Decrement each software timer
	for (i = 0; i < TMR_COUNT; i++) {
		if (tickCount[i] != 0) {
			tickCount[i]--;
		}
	}

	if (UART1_is_rx_ready()) {
		i = UART1_Read();

		if (i == 't') { // UTC time command stop
			UART1_Write(i);
			UART1_Write('\r');
			UART1_Write('\n');
			V.time_info = false;
			if (j == 10)
				V.time_info = true; // notify main we have a possible valid time
			V.get_time_text = false;
			V.rbuf[j] = 0; // term string
			j = 0;
		}

		if (V.get_time_text && j < 12) { // load ASCII time string and overflow size count
			UART1_Write(i);
			V.rbuf[j++] = i;
		}
		if (i == '#') { // Display system data on RS232 terminal
			V.sys_info = true;
		}
		if (i == 'V') { // AC charger ON
			V.ac_on = true;
		}
		if (i == 'v') { // AC charger OFF
			V.ac_off = true;
		}
		if (i == 'T') { // UTC time command start
			UART1_Write(i);
			V.time_info = false;
			V.get_time_text = true;
			j = 0;
		}

	}	
}
