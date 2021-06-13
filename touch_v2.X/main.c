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
 * This program controls and monitors solar power battery arrays on a 24vdc system
 * MBMC uses a simple expert machine to try and keep current the energy stored in a bank of batteries
 * The main physics functions are contained in the noload_soc, update_cef, ChargeBatt and pick_batt functions
 * Much more work is needed to make the program flow logical but making it work first is the current effort
 * The network interface processor on a RPi will be able to analyze the collected data for better control at some future point
 *
 * standard program display units:
 * Voltage  in Volts,
 * Current in Amps
 * Watts Power in Watts
 * Ah battery capacity Ah
 *
 * some important data structures
 * V: structure, global control structure
 * R: structure, real values from measurements
 * C: structure, calculated values from measurements or programs
 * D: structure, LCD control and buffers
 * H: structure, battery history parameters
 *
 * USART2 		client comm port 38400
 * USART1		MBMC logger and command channel
 * timer 2 100us PWM clock, no interrupt
 * timer 3 one second housekeeping clock for battery state tracking, low priority interrupt
 * timer 5 one second timer, TOD interrupt
 * timer 6 500us software timer ticker and parse simple serial port #1 single character commands, interrupt
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
 * ana5	pv voltage					R5 ~60 v max
 * ana6 modbus controller voltage			R6
 * anb2 backup battery voltage				R7
 * anb3 thermo_batt					thermistor input 10K at 25C 5v R8
 * anb4 inverter voltage				R9
 * anb5 light sensor voltage				R10 ~60 v max
 *
 * switch MAX debounce inputs INP, uses external interrupt 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
 * max pin	pic pin		connector pin	name	MBMC_IO board input connector pin
 * 1		rf0		spi 9			10
 * 2		rf1		spi 10			1
 * 3		rf2		PD 9		SELECT	2
 * 4		rf3		PD 8		ENTER	3
 * 5		rd3		PD 3		CALIB	4
 * 6		rd2		PD 2/misc 2	SW0	5
 * 7				misc 3			6
 * 8				misc 4			7
 *
 * 4x20 LCD status panel NHD-0420D3Z-NSW-BBW-V3 and led status lights .
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
	.ticks = DEF_TIME,
	.boot_time = DEF_TIME,
	.ticker = 25, // timer start offset
	.checksum_error = 0,
	.all_errors = 0,
	.debug = false,
	.stack = false, // 0 no messages, 1-10 messages in queue
	.help_id = 0,
	.sequences = 0,
	.set_sequ = false,
	.lowint_count = 0,
	.timerint_count = 0,
	.calib = CALIB,
	.screen = 0,
	.system_stable = false,
	.fixup = FIXUPS,
	.blight_off = false,
	.blight = 0,
	.float_ticks = 0,
	.boost_ticks = 0,
	.in_float = false,
	.in_boost = false,
	.ac_time = 0,
	.rbuf = "1",
};
H_data H = {
	.hid_display = HID_MAIN,
	.h_state = H_STATE_INIT,
	.wait_enter = true,
	.wait_select = true,
	.wait_calib = true,
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
	.hist[0].updates = 0,
	.hist[0].h[10] = 0,
	.hist[0].h[9] = HI_ESR, // highest possible ESR
	.day_start = 0,
	.day_end = 0,
	.day_update = 0,
	.dupdate = false,
	.updates = 0,
	.dynamic_ah_daily = 0.0,
	.dynamic_ah_adj_daily = 0.0,
};

struct tm *t_mbmc;
time_t pclock;

static bool current_sensor_cal(void);
static bool display_history(void);
static void wdt_reset(void);

const char *build_date = __DATE__, *build_time = __TIME__;

/*
 * Main application
 */
void main(void)
{
	bool t_out = STATUSbits.TO;
	uint32_t t_time;

	UI_STATES mode; /* link configuration host/equipment/etc ... */
	uint8_t inp_index = 0, i = C_BATT, j = C_PV, k = V_CC, i_ror;

	// Initialize the device
	SYSTEM_Initialize();

	// Enable high priority global interrupts
	INTERRUPT_GlobalInterruptHighEnable();

	// Enable low priority global interrupts.
	INTERRUPT_GlobalInterruptLowEnable();

	V.ui_state = UI_STATE_INIT;
	WWDT_SoftEnable();

	/*
	 * RS-232 link I/O relay defaults to monitor/log mode with no power
	 */
	WaitMs(300); // wait for mode switch to settle
	if (RB0_GetValue()) {
		mode = UI_STATE_HOST;
	} else {
		mode = UI_STATE_LOG;
	}


	V.mode_pwm = 0; // set diversion PWM to no power

	diversion_pwm_set(V.mode_pwm); // 10KHz PWM

	while (true) {
		switch (V.ui_state) {
		case UI_STATE_INIT:
			/*
			 * DMA serial uart1 I/O testing
			 */
			init_port_dma();

			init_display();
			eaDogM_CursorOff();
			set_dac(); // set both channels to zero volts
			/*
			 * load the battery to reduce surface charge
			 */
			set_load_relay_zero(true); // serial monitor relay on host board
			set_load_relay_one(true);
			set_load_relay_two(true);

			V.ui_state = mode;
			srand(1957);
			set_vterm(0); // set to buffer 0
			sprintf(get_vterm_ptr(0, 0), " MBMC SOLARMON      ");
			sprintf(get_vterm_ptr(1, 0), " Version %s         ", VER);
			sprintf(get_vterm_ptr(2, 0), " NSASPOOK           ");
			if (t_out) {
				sprintf(get_vterm_ptr(3, 0), "                    ");
			} else {
				sprintf(get_vterm_ptr(3, 0), " WDT TIMEOUT REBOOT ");
			}
			sprintf(get_vterm_ptr(0, 1), "                    ");
			sprintf(get_vterm_ptr(1, 1), "                    ");
			sprintf(get_vterm_ptr(2, 1), "                    ");
			sprintf(get_vterm_ptr(3, 1), "                    ");
			sprintf(get_vterm_ptr(0, 2), "                    ");
			sprintf(get_vterm_ptr(1, 2), "                    ");
			sprintf(get_vterm_ptr(2, 2), "                    ");
			sprintf(get_vterm_ptr(3, 2), "                    ");
			update_lcd(0);
			UART1_Write('T');
			UART1_Write('\r');
			UART1_Write('\n');
			WaitMs(1000);
			if (V.get_time_text) {
				StartTimer(TMR_TEXT, TXTDELAY);

				while (true) {
					wdt_reset();
					if (TimerDone(TMR_TEXT)) {
						V.get_time_text = false;
						V.time_info = false;
						break;
					}
					if (V.time_info) {
						V.time_info = false;
						t_time = (uint32_t) atol(V.rbuf);
						if (t_time > DEF_TIME) {
							set_time(t_time);
						}
					}
				}
			}
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
			if (read_cal_data()) {
				update_cal_data();
				if (update_hist_data(true, &C.hist[0]) && (C.hist[0].pclock > time(NULL))) {
					set_time(C.hist[0].pclock); // load EEPROM time history
				}

#ifdef CLR_CYCLE_DATA
				C.hist[0].h[1] = 0;
				C.hist[0].h[11] = 0;
				C.hist[0].updates = 0;
#endif

#ifdef CLR_BATTERY_DATA
				C.hist[0].h[0] = 0;
				C.hist[0].h[1] = 0;
				C.hist[0].h[2] = 0;
				C.hist[0].h[4] = 0;
				C.hist[0].h[5] = 0;
				C.hist[0].h[6] = 0;
				C.hist[0].h[9] = 0;
				C.hist[0].h[10] = 0;
				C.hist[0].h[11] = 0;
				C.hist[0].updates = 0;
#endif

#ifdef CLR_PV_DATA
				C.hist[0].h[3] = 0;
				C.hist[0].h[12] = 0;
#endif

				sprintf(get_vterm_ptr(2, 0), "Read EEPROM DATA    ");
			} else {
				sprintf(get_vterm_ptr(2, 0), "Invalid EEPROM DATA ");
			}
			update_lcd(0);
			clear_adc_scan();
			start_adc_scan();
			WaitMs(2000);

			V.cc_state = cc_state(conv_raw_result(V_CMODE, CONV));
			if (V.cc_state && (V.cc_state != M_OFFLINE)) {
				V.cc_active = true;
			} else {
				V.cc_active = false;
			}

			i_ror = 1;
			do {
				calc_ror_data();
				sprintf(get_vterm_ptr(1, 0), "BV %2.4f CC%d            ", conv_raw_result(V_BAT, CONV), V.cc_state);
				sprintf(get_vterm_ptr(2, 0), "S S%cC %d %2.4f          ", spinners(5, false), i_ror, C.bv_ror);
				update_lcd(0);
				clear_adc_scan();
				start_adc_scan();
				wdt_reset();
				WaitMs(ROR_WAIT); // time between samples

				//WaitMs(500); // wait for updated ADC data
			} while ((i_ror++ < ROR_TIMES) && (C.bv_ror > ROR_LIMIT_LOW));

			static_soc(); // defaults
			init_bsoc(); // system calculations
			set_load_relay_one(false);
			set_load_relay_two(false);
			sprintf(get_vterm_ptr(0, 0), "Static SOC %d         ", C.soc);
			sprintf(get_vterm_ptr(1, 0), "Battery Ah %3.2f      ", C.dynamic_ah);
			sprintf(get_vterm_ptr(2, 0), "                      ");
			update_lcd(0);
			WaitMs(2000);
			sprintf(get_vterm_ptr(0, 0), "Battery ESR          ");
			sprintf(get_vterm_ptr(1, 0), "Calculation          ");
			sprintf(get_vterm_ptr(2, 0), "Check 30 seconds     ");
			update_lcd(0);
			uint16_t i_esr = 1;
			uint8_t shape = 0;
			float esr_temp;
			while ((esr_temp = esr_check(false)) < 0.0) {
				WaitMs(110); // limit display updates
				shape = (uint8_t) fabs(esr_temp);
				sprintf(get_vterm_ptr(2, 0), "Checking %c %c       ", spinners(0, false), spinners(shape, false));
				update_lcd(0);

				if (i_esr++ > 512)
					break;
			};
			sprintf(get_vterm_ptr(0, 0), "ESR  %2.6f            ", C.esr);
			sprintf(get_vterm_ptr(1, 0), "R1 %2.3f %3.4f            ", C.bv_one_load, C.load_i1);
			sprintf(get_vterm_ptr(2, 0), "R2 %2.3f %3.4f            ", C.bv_full_load, C.load_i2);
			update_lcd(0);
			WaitMs(4000);
			V.sensor_set = get_switch(SCALIB);
			WaitMs(1000);
			if (V.sensor_set && get_switch(SCALIB)) {
				current_sensor_cal();
				WaitMs(4000);
			}
			V.blight = time(NULL) + BL_TIME;
			V.sensor_set = false;
			V.system_stable = true;
			break;
		case UI_STATE_HOST:
			break;
		case UI_STATE_LOG:
			break;
		case UI_STATE_MON: // monitor
			//			P.SYSTEM_STABLE = true;
			break;
		case UI_STATE_ERROR:
		default:
			V.ui_state = UI_STATE_INIT;
			break;
		}

		/*
		 * start the ADC scan for raw data
		 */
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

		if (TimerDone(TMR_DISPLAY)) { // limit update rate
			if (TimerDone(TMR_HELPDIS)) {
				set_display_info(DIS_STR);
			}
			pclock = time(NULL);
			t_mbmc = localtime(&pclock);
			sprintf(get_vterm_ptr(3, 0), "%s           ", asctime(t_mbmc));
			sprintf(get_vterm_ptr(3, 1), "%s           ", asctime(t_mbmc));
			calc_model_data();
			V.cc_state = cc_state(C.v_cmode);
			if (C.dupdate) {
				C.dupdate = false;
				set_hist_flag();

				uint16_t i_esr = 1;
				esr_check(true); // init FSM
				while (esr_check(false) < 0.0) {
					WaitMs(110);
					if (i_esr++ > 512)
						break;
				};
				load_hist_data(); // calculate history data
				update_hist_data(false, &C.hist[0]); // load EEPROM history buffer
				write_cal_data(); // save updated history to EEPROM
				sprintf(get_vterm_ptr(0, 0), "History Data  Saved  ");
				sprintf(get_vterm_ptr(1, 0), "To EEPROM            ");
				sprintf(get_vterm_ptr(2, 0), " Time %lu, %lu       ", time(NULL), C.hist[0].updates);
				update_lcd(0);
				WaitMs(2000);
			}
			/*
			 * Display back-light control
			 */
			if (set_back_light_off(false)) {
				send_lcd_cmd_dma(0x53); // back-light command
				send_lcd_data_dma(NHD_BL_MED); // light on
				wait_lcd_done();
			}
			if (set_back_light_off(true)) {
				send_lcd_cmd_dma(0x53);
				send_lcd_data_dma(NHD_BL_OFF); // light off
				wait_lcd_done();
			}
			/*
			 * LCD display updates
			 */
			hid_display(&H);
			switch (H.hid_display) {
			case HID_PWR:
				V.calib = false;
				sprintf(get_vterm_ptr(0, 0), "PV %c W %3.2f       ", (C.day) ? 'D' : ' ', C.p_pv);
				sprintf(get_vterm_ptr(1, 0), "LOAD W %3.2f LA %2.2f      ", C.p_load, C.c_load);
				sprintf(get_vterm_ptr(2, 0), "MPPT W %3.2f %d       ", C.p_mppt, V.cc_state);

				sprintf(get_vterm_ptr(0, 1), "PV %c WH %3.2f        ", (C.day) ? 'D' : ' ', C.pvkw);
				sprintf(get_vterm_ptr(1, 1), "LOAD WH %3.2f         ", C.loadkw);
				sprintf(get_vterm_ptr(2, 1), "INV  WH %3.2f         ", C.invkw);
				break;
			case HID_MAIN:
				V.calib = false;
				sprintf(get_vterm_ptr(0, 0), "PV %2.2f PA %2.2f     ", calc_fixups(C.calc[V_PV], WIDE_ZERO), calc_fixups(C.calc[C_MPPT], WIDE_ZERO | NO_NEG));
				sprintf(get_vterm_ptr(1, 0), "BV %2.2f BA %2.2f     ", calc_fixups(C.calc[V_BAT], WIDE_ZERO), C.calc[C_BATT]);
				sprintf(get_vterm_ptr(2, 0), "CV %2.2f CA %2.2f     ", calc_fixups(C.calc[V_CC], WIDE_ZERO), C.calc[C_PV]);

				sprintf(get_vterm_ptr(0, 1), "BAT IWH %4.1f         ", C.bkwi);
				sprintf(get_vterm_ptr(1, 1), "BAT OWH %4.1f         ", C.bkwo);
				sprintf(get_vterm_ptr(2, 1), "BAT TWH %4.1f         ", C.bkwi + C.bkwo);
				break;
			case HID_RUN:
				V.calib = false;
				sprintf(get_vterm_ptr(0, 0), "BATT W %3.2f            ", C.p_bat);
				sprintf(get_vterm_ptr(1, 0), "BAH T%3.2f D%3.2f       ", C.dynamic_ah, C.dynamic_ah_daily);
				sprintf(get_vterm_ptr(2, 0), "S%cC %d RUN %d V%2.2f        ", spinners(5, false), C.soc, C.runtime, C.calc[V_BAT]);

				sprintf(get_vterm_ptr(0, 1), "ESR  %2.6f             ", C.esr);
				sprintf(get_vterm_ptr(1, 1), "R1 %2.3f %3.4f         ", C.bv_one_load, C.load_i1);
				sprintf(get_vterm_ptr(2, 1), "R2 %2.3f %3.4f         ", C.bv_full_load, C.load_i2);
				break;
			case HID_AUX:
				if (!V.calib) { // clear buffer and start from zero
					lp_filter(0.0, i, -1);
					lp_filter(0.0, j, -1);
					lp_filter(0.0, k, -1);
				}
				V.calib = true;
				sprintf(get_vterm_ptr(0, 0), "%d %2.4f, %d  TRIM   ", get_raw_result(i), C.calc[i], inp_index + 1);
				if (inp_index < 9) {
					sprintf(get_vterm_ptr(1, 0), "%d %2.4f, %d  TRIM   ", get_raw_result(j), C.calc[j], inp_index + 2);
					sprintf(get_vterm_ptr(2, 0), "%d %2.4f, %d  TRIM   ", get_raw_result(k), C.calc[k], inp_index + 3);
				} else {
					sprintf(get_vterm_ptr(1, 0), "%4d, %4d, %4lu       ", C.hist[0].h[11], C.hist[0].h[1], C.hist[0].updates);
					sprintf(get_vterm_ptr(2, 0), "%4d, %4d, %4d        ", C.hist[0].h[0], C.hist[0].h[9], C.hist[0].h[10]);
				}
				break;
			default:
				break;
			}
			clear_hid_pflags(&H);

			StartTimer(TMR_DISPLAY, DDELAY);
			V.enter = check_enter_button(&H);
			if (V.enter && (H.hid_display != HID_AUX)) {
				V.enter = false;
				V.screen = ~V.screen;
				inp_index = 0;
			}
			set_vterm(V.screen);
			update_lcd(V.screen);
			display_history();

			wait_lcd_done();
			set_dac_a(3.333);
			set_dac_b(6.666);
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
				k = V_CMODE;
				break;
			case 6:
				i = V_BBAT;
				j = C_MPPT;
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
		wdt_reset();
	}
}

static bool current_sensor_cal(void)
{
	uint8_t x = 0;
	uint32_t cb = 0, cp = 0, cm = 0;

	sprintf(get_vterm_ptr(0, 0), "Battery and PV       ");
	sprintf(get_vterm_ptr(1, 0), "Sensor Zero          ");
	sprintf(get_vterm_ptr(2, 0), "Calibration          ");
	update_lcd(0);
	WaitMs(2000);
	do {
		if (++x > CAL_DELAY)
			return false;
		sprintf(get_vterm_ptr(2, 0), "Release button %c   ", spinners(4, false));
		update_lcd(0);
		WaitMs(100);
	} while (get_switch(SCALIB));

	x = 0;
	do {
		cb += get_raw_result(C_BATT); // get a average result
		cp += get_raw_result(C_PV);
		cm += get_raw_result(C_MPPT);
#ifdef CAL_TWO
		cm = cp;
#endif
		sprintf(get_vterm_ptr(0, 0), "Sensor Readings      ");
		sprintf(get_vterm_ptr(1, 0), " %d %d %d              ", get_raw_result(C_BATT), get_raw_result(C_PV), get_raw_result(C_MPPT));
		sprintf(get_vterm_ptr(2, 0), "Stability clock %d   ", x);
		update_lcd(0);
		clear_adc_scan();
		start_adc_scan();
		WaitMs(100);
	} while (++x < CAL_DELAY);
	cb = cb >> 6; // shift down for average result
	cp = cp >> 6;
	cm = cm >> 6;

	if (cal_current_zero(false, cb, cp, cm)) {
		cal_current_zero(true, cb, cp, cm);
		sprintf(get_vterm_ptr(0, 0), "Battery and PV       ");
		sprintf(get_vterm_ptr(1, 0), " %ld %ld %ld            ", cb, cp, cm);
		sprintf(get_vterm_ptr(2, 0), "Zero Cal Set         ");
		update_lcd(0);
		WaitMs(2000);
		write_cal_data();
	} else {
		sprintf(get_vterm_ptr(0, 0), "Battery and PV       ");
		sprintf(get_vterm_ptr(1, 0), " %ld %ld %ld            ", cb, cp, cm);
		sprintf(get_vterm_ptr(2, 0), "Zero Out Of Range    ");
		update_lcd(0);
		WaitMs(2000);
		return false;
	}

#ifdef CAL_10A
	uint32_t cbz, cpz;

	clear_switch(SCALIB);
	sprintf(get_vterm_ptr(0, 0), "Battery and PV      ");
	sprintf(get_vterm_ptr(1, 0), "10 Amp Sensor       ");
	sprintf(get_vterm_ptr(2, 0), "Calibration         ");
	update_lcd(0);
	WaitMs(2000);
	x = 0;
	do {
		if (++x > CAL_DELAY)
			return false;
		sprintf(get_vterm_ptr(2, 0), "Press button %c   ", spinners(4, false));
		update_lcd(0);
		WaitMs(100);
	} while (!get_switch(SCALIB));

	x = 0;
	cbz = cb;
	cpz = cp;
	cb = 0;
	cp = 0;
	do {
		cb += get_raw_result(C_BATT);
		cp += get_raw_result(C_PV);
		sprintf(get_vterm_ptr(0, 0), "Sensor Readings      ");
		sprintf(get_vterm_ptr(1, 0), " %d %d               ", get_raw_result(C_BATT), get_raw_result(C_PV));
		sprintf(get_vterm_ptr(2, 0), "Stability clock %d   ", x);
		update_lcd(0);
		clear_adc_scan();
		start_adc_scan();
		WaitMs(100);
	} while (++x < CAL_DELAY);
	cb = cb >> 6;
	cp = cp >> 6;

	if (cal_current_10A(false, cb, cp, 0.0, 0.0)) {
		cal_current_10A(true, cb, cp, 10.0 / (float) (cb - cbz), 10.0 / (float) (cp - cpz));
		sprintf(get_vterm_ptr(0, 0), "Battery and PV       ");
		sprintf(get_vterm_ptr(1, 0), " %f %f               ", 10.0 / (float) ((cb - cbz) + 1), 10.0 / (float) ((cp - cpz) + 1));
		sprintf(get_vterm_ptr(2, 0), "10A Cal Set          ");
		update_lcd(0);
		WaitMs(5000);
		write_cal_data();
	} else {
		sprintf(get_vterm_ptr(0, 0), "Battery and PV       ");
		sprintf(get_vterm_ptr(1, 0), " %ld %ld             ", get_raw_result(C_BATT), get_raw_result(C_PV));
		sprintf(get_vterm_ptr(2, 0), "10A Out Of Range     ");
		update_lcd(0);
		WaitMs(2000);

		return false;
	}
#endif

	return true;
}

static bool display_history(void)
{
	static uint8_t bwait = 0;

	if (get_switch(SCALIB) && (++bwait > 5)) {
		pclock = time(NULL);
		t_mbmc = localtime(&pclock);
		sprintf(get_vterm_ptr(0, 0), "%d %d %d %d                ", C.hist[0].h[0], C.hist[0].h[1], C.hist[0].h[2], C.hist[0].h[3]);
		sprintf(get_vterm_ptr(1, 0), "%d %d %d %d                ", C.hist[0].h[4], C.hist[0].h[5], C.hist[0].h[6], C.hist[0].h[7]);
		sprintf(get_vterm_ptr(2, 0), "%d %d %d %d                ", C.hist[0].h[8], C.hist[0].h[9], C.hist[0].h[10], C.hist[0].h[12]);
		sprintf(get_vterm_ptr(3, 0), "%s           ", asctime(t_mbmc));
		update_lcd(0);
		WaitMs(2000);
		bwait = 0;
		return true;
	} else {
		if (!get_switch(SCALIB))
			bwait = 0;
		return false;
	}
}

static void wdt_reset(void)
{
#ifdef DEBUG_WDT1
	RELAYL1_SetHigh();
#endif
#ifdef DEBUG_WDT2
	RELAYL2_SetHigh();
#endif
	CLRWDT();
}
/**
 End of File
 */