/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
	Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.65.2
	Device            :  PIC18F57K42
	Driver Version    :  2.00
 */

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip software and any
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party
    license terms applicable to your use of third party software (including open source software) that
    may accompany Microchip software.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS
    FOR A PARTICULAR PURPOSE.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS
    SOFTWARE.
 */

/*
 *
 * This program controls and monitors solar power battery arrays on a 12vdc system
 * MBMC uses a simple expert machine to try and keep current the energy stored in a bank of batteries
 * The main physics functions are contained in the noload_soc, update_cef, ChargeBatt and pick_batt functions
 * Much more work is needed to make the program flow logical but making it work first is the current effort
 * The network interface processor on a pic32 will be able to analyze the collected data for better control at some future point
 *
 * standard program display units:
 * Voltage  in millivolts,
 * Current in milliamps
 * Watts Power in milliwatts
 * Ah battery capacity milliAh
 *
 * R: structure, real values from measurements
 * C: structure, calculated values from measurements or programs
 * B: structure, battery parameters
 *
 * USART2 		Is the client comm port 38400
 * USART1		MBMC logger channel
 * timer 2 100 us PWM clock, no interrupt
 * timer 3 one second housekeeping clock for battery state tracking, low priority interrupt
 * timer 5 one second timer, interrupt
 * timer 6 500 us software timer ticker, interrupt
 *
 * dma1 spi transmit
 * dma2 tx1 transmit
 *
 * 10 analog channels are active
 * PORTA,PORTB		analog inputs
 * ana0	battery current					200A hall sensor battery output to inverter 5v R1
 * ana1	PV input current				100A hall sensor input from PV array 5v R2
 * ana2	charge controller output voltage		R3
 * ana3  PLUS VREF					Using a external 4.095 volt reference IC from TI/BB
 * ana4	battery voltage					Voltage a primary inverter battery R4
 * ana5	pv voltage					R5
 * ana6 controller buss voltage				R6
 * anb2 backup battery voltage				R7
 * anb3 thermo_batt					thermistor input 10K at 25C 5v R8
 * anb4 inverter voltage				R9
 * anb5 spare						R10
 *
 * switch MAX debounce inputs INP                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
 * max pin	pic pin		connector pin	name	MBMC_IO board input connector pin
 * 1		rf0		spi 9			10
 * 2		rf1		spi 10			1
 * 3		rf2		PD 9		SELECT	2
 * 4		rf3		PD 8		ENTER	3
 * 5		rd3		PD 3			4
 * 6		rd2		PD 2/misc 2	SW0	5
 * 7				misc 3			6
 * 8				misc 4			7
 *
 * adc_cal[0-3]						current sensors zero offset stored in eeprom 0=a100, 1=a200, 2..3=future
 * 3x16 LCD status panel and led status lights.
 *
 * uln2802 port output pins OUTP
 * i/o  port	function
 * 0	RD4	load relay 1
 * 1	RD5	load relay 2
 * 2	RD6	PV/AC Charger DC charge-controller source relay
 * 4	RF4	spare
 * 
 * system variables float
 *
 * current_in
 * current_battery
 * current_load
 *
 * voltage_pv
 * voltage_cc
 * voltage_battery
 * voltage_load
 * voltage_buss
 * voltage_thermo
 * voltage_backup
 */

#pragma warning disable 520
#pragma warning disable 1498

#ifndef __DEFINED_int24_t
typedef signed long long int24_t;
#define __DEFINED_int24_t
#endif

#include <stdio.h>
#include <string.h>
#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/uart1.h"
#include "eadog.h"
#include "timers.h"
#include "mconfig.h"
#include "mydisplay.h"
#include "daq.h"
#include "mbmc.h"
#include "dio.h"
#include "hid.h"
#include "bsoc.h"

V_data V = {
	.ticker = 45,
	.checksum_error = 0,
	.all_errors = 0,
	.debug = false,
	.stack = false, // 0 no messages, 1-10 messages in queue
	.help_id = 0,
	.sequences = 0,
	.set_sequ = false,
	.highint_count = 0,
	.lowint_count = 0,
	.timerint_count = 0,
	.calib = CALIB,
	.screen = 0,
	.system_stable = false,
};
H_data H = {
	.hid_display = HID_MAIN,
	.h_state = H_STATE_INIT,
	.wait_enter = true,
	.wait_select = true,
	.sequence = 0,
};

/*
 * FIXME STUFF
 */

volatile uint16_t tickCount[TMR_COUNT] = {0};
volatile uint8_t mode_sw = false;
volatile C_data C = {
	.bank_ah = BANKAH - DEGRADE,
	.day = true,
	.hist[0].version = HVER,
	.hist[0].cef = CEF,
	.hist[0].peukert = PEUKERT,
};

extern volatile struct P_data P;

/*
 * Main application
 */
void main(void)
{
	UI_STATES mode; /* link configuration host/equipment/etc ... */
	uint8_t inp_index = 0, i = C_BATT, j = C_PV, k = V_CC, i_ror;

	// Initialize the device
	SYSTEM_Initialize();

	// Enable high priority global interrupts
	INTERRUPT_GlobalInterruptHighEnable();

	// Enable low priority global interrupts.
	INTERRUPT_GlobalInterruptLowEnable();

	V.ui_state = UI_STATE_INIT;

	/*
	 * RS-232 link I/O relay defaults to monitor/log mode with no power
	 */
	WaitMs(300); // wait for mode switch to settle
	if (RB0_GetValue()) {
		mode = UI_STATE_HOST;
	} else {
		mode = UI_STATE_LOG;
	}

	if (mode == UI_STATE_HOST) {
		RELAY0_SetHigh();
		V.mode_pwm = 70; // mode switch indicator lamp normal level
	} else {
		RELAY0_SetLow();
		V.mode_pwm = 0;
	}
	mode_lamp_dim(V.mode_pwm); // 10KHz PWM

	while (true) {
		switch (V.ui_state) {
		case UI_STATE_INIT:
			/*
			 * DMA serial uart1 I/O testing
			 */
			init_port_dma();

			init_display();
			eaDogM_CursorOff();
			/*
			 * load the battery to reduce surface charge
			 */
			set_load_relay_one(true);
			set_load_relay_two(true);

			V.ui_state = mode;
			srand(1957);
			set_vterm(0); // set to buffer 0
			sprintf(get_vterm_ptr(0, 0), " MBMC SOLARMON      ");
			sprintf(get_vterm_ptr(1, 0), " Version %s         ", VER);
			sprintf(get_vterm_ptr(2, 0), " NSASPOOK           ");
			sprintf(get_vterm_ptr(0, 2), "                    ");
			sprintf(get_vterm_ptr(1, 2), "                    ");
			sprintf(get_vterm_ptr(2, 2), "                    ");
			update_lcd(0);
			WaitMs(1000);
			StartTimer(TMR_DISPLAY, DDELAY);
			StartTimer(TMR_ADC, ADC_SCAN_SPEED);
			StartTimer(TMR_INFO, TDELAY);
			StartTimer(TMR_FLIPPER, DFLIP);
			StartTimer(TMR_HELPDIS, TDELAY);

			start_adc_scan();
			start_switch_handler();
			WaitMs(1000);
			/*
			 * check for quickly changing battery voltage
			 * to stabilize as to get a better static SOC value
			 */
			i_ror = 1;
			do {
				calc_ror_data();
				sprintf(get_vterm_ptr(1, 0), "BV %2.4f            ", conv_raw_result(V_BAT, CONV));
				sprintf(get_vterm_ptr(2, 0), "S S%cC %d %2.4f          ", spinners(5, false), i_ror, C.bv_ror);
				update_lcd(0);
				clear_adc_scan();
				start_adc_scan();
				WaitMs(ROR_WAIT); // time between samples

				//WaitMs(500); // wait for updated ADC data
			} while ((i_ror++ < ROR_TIMES) && (C.bv_ror > ROR_LIMIT_LOW));

			static_soc(); // defaults
			init_bsoc(); // system calculations
			set_load_relay_one(false);
			set_load_relay_two(false);
			sprintf(get_vterm_ptr(0, 0), "Static SOC %d        ", C.soc);
			sprintf(get_vterm_ptr(1, 0), "Battery Ah %3.2f     ", C.dynamic_ah);
			update_lcd(0);
			WaitMs(2000);
			sprintf(get_vterm_ptr(0, 0), "Battery ESR         ");
			sprintf(get_vterm_ptr(1, 0), "Calculation         ");
			sprintf(get_vterm_ptr(2, 0), "Check 30 seconds    ");
			update_lcd(0);
			uint16_t i_esr = 1;
			uint8_t shape = 0;
			float esr_temp;
			while ((esr_temp = esr_check(false)) < 0.0) {
				WaitMs(110); // limit display updates
				shape = (uint8_t) fabs(esr_temp);
				sprintf(get_vterm_ptr(2, 0), "Checking %c %c      ", spinners(0, false), spinners(shape, false));
				update_lcd(0);

				if (i_esr++ > 512)
					break;
			};
			sprintf(get_vterm_ptr(0, 0), "ESR  %2.6f           ", C.esr);
			sprintf(get_vterm_ptr(1, 0), "R1 %2.3f %3.4f           ", C.bv_one_load, C.load_i1);
			sprintf(get_vterm_ptr(2, 0), "R2 %2.3f %3.4f           ", C.bv_full_load, C.load_i2);
			update_lcd(0);
			WaitMs(5000);
			V.system_stable = true;
			break;
		case UI_STATE_HOST:
			break;
		case UI_STATE_LOG:
			break;
		case UI_STATE_MON: // monitor
			P.SYSTEM_STABLE = true;
			break;
		case UI_STATE_ERROR:
		default:
			V.ui_state = UI_STATE_INIT;
			break;
		}

		if (TimerDone(TMR_ADC) && check_adc_scan()) {
			/*
			 * download the system data variables
			 */
			convert_adc_data();
			/*
			 * restart the conversion process
			 */
			clear_adc_scan();
			start_adc_scan();
			StartTimer(TMR_ADC, ADC_SCAN_SPEED);
		}

		if (V.ticks) {

		}

		if (TimerDone(TMR_DISPLAY)) { // limit update rate
			if (TimerDone(TMR_HELPDIS)) {
				set_display_info(DIS_STR);
			}
			calc_model_data();

			if (false) {
				sprintf(get_vterm_ptr(0, 0), "%d %2.4f   %d  ", get_raw_result(i), C.calc[i], get_switch(SSELECT));
				sprintf(get_vterm_ptr(1, 0), "%d %2.4f   %d  ", get_raw_result(j), C.calc[j], get_switch(SENTER));
				sprintf(get_vterm_ptr(2, 0), "%d %2.4f, %d   #", get_raw_result(k), C.calc[k], inp_index);
			} else {
				hid_display(&H);
				switch (H.hid_display) {
				case HID_PWR:
					V.calib = false;
					sprintf(get_vterm_ptr(0, 0), "PV %c PWR %3.2f      ", (C.day) ? 'D' : ' ', C.p_pv);
					sprintf(get_vterm_ptr(1, 0), "LOAD PWR %3.2f       ", C.p_load);
					sprintf(get_vterm_ptr(2, 0), "INV  PWR %3.2f       ", C.p_inverter);

					sprintf(get_vterm_ptr(0, 1), "PV %c WH %3.2f       ", (C.day) ? 'D' : ' ', C.pvkw);
					sprintf(get_vterm_ptr(1, 1), "LOAD WH %3.2f        ", C.loadkw);
					sprintf(get_vterm_ptr(2, 1), "INV  WH %3.2f        ", C.invkw);
					break;
				case HID_MAIN:
					V.calib = false;
					sprintf(get_vterm_ptr(0, 0), "PV %2.2f PA %2.2f    ", C.calc[V_PV], C.calc[C_PV]);
					sprintf(get_vterm_ptr(1, 0), "BV %2.2f BA %2.2f    ", C.calc[V_BAT], C.calc[C_BATT]);
					sprintf(get_vterm_ptr(2, 0), "CV %2.2f LA %2.2f    ", C.calc[V_CC], C.c_load);

					sprintf(get_vterm_ptr(0, 1), "BAT IWH %4.1f        ", C.bkwi);
					sprintf(get_vterm_ptr(1, 1), "BAT OWH %4.1f        ", C.bkwo);
					sprintf(get_vterm_ptr(2, 1), "BAT TWH %4.1f        ", C.bkwi + C.bkwo);
					break;
				case HID_RUN:
					V.calib = false;
					sprintf(get_vterm_ptr(0, 0), "BATT PWR %3.2f        ", C.p_bat);
					sprintf(get_vterm_ptr(1, 0), "BAH %3.2f P%3.2f      ", C.dynamic_ah, C.pv_ah);
					sprintf(get_vterm_ptr(2, 0), "S%cC %d RUN %d V%2.2f       ", spinners(5, false), C.soc, C.runtime, C.calc[V_BAT]);

					sprintf(get_vterm_ptr(0, 1), "ESR  %2.6f            ", C.esr);
					sprintf(get_vterm_ptr(1, 1), "R1 %2.3f %3.4f        ", C.bv_one_load, C.load_i1);
					sprintf(get_vterm_ptr(2, 1), "R2 %2.3f %3.4f        ", C.bv_full_load, C.load_i2);
					break;
				case HID_AUX:
					if (!V.calib) {
						lp_filter(0.0, i, -1);
						lp_filter(0.0, j, -1);
						lp_filter(0.0, k, -1);
					}
					V.calib = true;
					sprintf(get_vterm_ptr(0, 0), "%d %2.4f, %d  TRIM   ", get_raw_result(i), C.calc[i], inp_index + 1);
					sprintf(get_vterm_ptr(1, 0), "%d %2.4f, %d  TRIM   ", get_raw_result(j), C.calc[j], inp_index + 2);
					sprintf(get_vterm_ptr(2, 0), "%d %2.4f, %d  TRIM   ", get_raw_result(k), C.calc[k], inp_index + 3);
					break;
				default:
					break;
				}
				clear_hid_pflags(&H);
			}
			StartTimer(TMR_DISPLAY, DDELAY);
			V.enter = check_enter_button(&H);
			if (V.enter && (H.hid_display != HID_AUX)) {
				V.enter = false;
				V.screen = ~V.screen;
			}
			set_vterm(V.screen);
			update_lcd(V.screen);

			wait_lcd_done();
			set_dac_a(3.33);
			set_dac_b(6.66);
			set_dac();
		}

		/*
		 * show help display if button pressed
		 */
		check_help(V.flipper);

		if (V.enter) {
			V.enter = false;
			V.calib = false;
			inp_index += 3;
			if (inp_index > 9)
				inp_index = 0;
			switch (inp_index) {
			case 0:
				i = C_BATT;
				j = C_PV;
				k = V_CC;
				break;
			case 3:
				i = V_BAT;
				j = V_PV;
				k = V_CBUS;
				break;
			case 6:
				i = V_BBAT;
				j = V_TEMP;
				k = V_INVERTER;
				break;
			case 9:
				i = V_LIGHT_SENSOR;
				j = V_LIGHT_SENSOR;
				k = V_LIGHT_SENSOR;
				break;
			default:
				break;
			}
		};

		/*
		 * show command messages if flag is set for timer duration
		 */
		if (V.set_sequ) {
			if (TimerDone(TMR_INFO)) {
				V.set_sequ = false;
				set_vterm(0);
				update_lcd(0);
			} else {
				set_vterm(2);
				update_lcd(2);
			}
		}
	}
}

/**
 End of File
 */