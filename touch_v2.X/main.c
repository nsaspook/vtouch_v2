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
 * USART1		MBMC host network 38400
 * timer 2 100 us PWM clock, no interrupt
 * timer 5 one second timer, interrupt
 * timer 6 500 us software timer ticker, interrupt
 * 
 * 10 analog channels are active
 * PORTA,PORTB		analog inputs
 * ana0	battery current					300A AMPLOC sensor battery output to inverter 5v R1
 * ana1	PV input current				50A AMPLOC sensor input from PV array 5v R2
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
 * 
 * adc_cal[0-3]						current sensors zero offset stored in eeprom 0=a300, 1=a50, 2..3=future
 * 3x16 LCD status panel and led status lights.
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

extern struct spi_link_type spi_link;

V_data V = {
	.uart = 1,
	.ticker = 45,
	.checksum_error = 0,
	.all_errors = 0,
	.timer_error = 0,
	.debug = false,
	.queue = false,
	.stack = false, // 0 no messages, 1-10 messages in queue
	.sid = 1,
	.help_id = 0,
	.ping_count = 0,
	.sequences = 0,
	.set_sequ = false,
};

/*
 * FIXME STUFF
 */

volatile uint16_t tickCount[TMR_COUNT] = {0};
volatile uint8_t mode_sw = false;
C_data C;

float lp_filter(float, uint8_t, int8_t);

/*
 * Main application
 */
void main(void)
{
	UI_STATES mode; /* link configuration host/equipment/etc ... */

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
			 * DMA I/O testing
			 */
			//			init_port();
			//			send_port_data_dma();

			init_display();
			eaDogM_CursorOff();

			V.ui_state = mode;
			srand(1957);
			set_vterm(0); // set to buffer 0
			sprintf(get_vterm_ptr(0, 0), " MBMC SOLARMON  ");
			sprintf(get_vterm_ptr(1, 0), " Version %s   ", VER);
			sprintf(get_vterm_ptr(2, 0), " NSASPOOK       ");
			sprintf(get_vterm_ptr(0, 2), " SEQUENCE TEST  ");
			sprintf(get_vterm_ptr(1, 2), " Version %s   ", VER);
			sprintf(get_vterm_ptr(2, 2), " VTERM #2       ");
			update_lcd(0);
			WaitMs(3000);
			StartTimer(TMR_DISPLAY, DDELAY);
			StartTimer(TMR_ADC, ADC_SCAN_SPEED);
			StartTimer(TMR_INFO, TDELAY);
			StartTimer(TMR_FLIPPER, DFLIP);
			StartTimer(TMR_HELPDIS, TDELAY);

			start_adc_scan();

			break;
		case UI_STATE_HOST: //slave
			break;
		case UI_STATE_LOG: // monitor
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
			C.calc[C_BATT] = lp_filter(conv_raw_result(C_BATT, C_CONV), C_BATT, true);
			C.calc[V_CC] = lp_filter(conv_raw_result(V_CC, V_CONV), V_CC, false);
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
			sprintf(get_vterm_ptr(1, 0), "%d %2.2f   #", get_raw_result(C_BATT), C.calc[C_BATT]);
			sprintf(get_vterm_ptr(2, 0), "%d %2.2f   #", get_raw_result(V_CC), C.calc[V_CC]);
			StartTimer(TMR_DISPLAY, DDELAY);
			update_lcd(0);
		}

		/*
		 * show help display if button pressed
		 */
		check_help(V.flipper);

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

float lp_filter(float new, uint8_t bn, int8_t slow) // low pass filter, slow rate of change for new, LPCHANC channels, slow/fast select (-1) to zero channel
{
	static float smooth[ADC_BUFFER_SIZE], lp_speed, lp_x;

	if (bn > ADC_BUFFER_SIZE)
		return new;
	if (slow) {
		lp_speed = 0.066;
	} else {
		lp_speed = 0.250;
	}
	lp_x = ((smooth[bn]*100.0) + (((new * 100.0)-(smooth[bn]*100.0)) * lp_speed)) / 100.0;
	smooth[bn] = lp_x;
	if (slow == (-1)) { // reset and return zero
		lp_x = 0.0;
		smooth[bn] = 0.0;
	}
	return lp_x;
}
/**
 End of File
 */