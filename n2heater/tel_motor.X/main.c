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
	Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.4
	Device            :  PIC18F47K42
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
 * TEL 5-phase stepper motor controller
 * Enclosure: CAMDENBOSS  CDIC00005 
 * PIC18F47K42 Touch Board: basic function
 * RA0 0 to 5vdc speed signal input from pot input
 * RA1 stepper controller error signal input
 * 
 * RA6  stepper driver pulse signal output
 * RA2  EMO button for total power stop input
 * RA3  speed range button for motor speed slow/fast input
 * 
 * RD0 EMO signal to relay output
 * RA4 LED1 indicator output
 * RD4 LED2 indicator output
 */

#pragma warning disable 520
#pragma warning disable 1498

#include <stdint.h>
#include "mcc_generated_files/mcc.h"
#include "timer.h"
#include "stepper.h"
/*
 * software time variables
 */
volatile uint16_t tickCount[TMR_COUNT] = {0};

volatile bool can_move = true;
uint16_t temp = 0;
uint32_t count = 0;

const char *build_date = __DATE__;
const char *build_time = __TIME__;
const char build_version[5] = "1.0";

uint16_t controller_work(void);

/*
 * Main application
 */
void main(void)
{
	uint16_t pwm_value = CLOCK_SLOWEST;

	// Initialize the device
	SYSTEM_Initialize();

	INTERRUPT_GlobalInterruptHighEnable();

	TMR0_StartTimer();
	TMR2_Stop();
	BLED2_SetHigh(); // boot LED indicator
	WaitMs(250);
	BLED2_SetLow();
	/*
	 * software timer 1 second PWM cycles
	 */
	StartTimer(TMR_PERIOD, STEPPER_MS);
	StartTimer(TMR_LOG, LOGGING);

	while (true) {
		pwm_value = controller_work();
		/*
		 * testing logging & WDT reseting every 10 seconds
		 */
		if (TimerDone(TMR_LOG)) {
			StartTimer(TMR_LOG, LOGGING);
			CLRWDT();
		}
		if (TimerDone(TMR_PERIOD)) {
			StartTimer(TMR_PERIOD, STEPPER_MS);
		}
	}
}

/*
 * I/O and program state setting
 */
uint16_t controller_work(void)
{
	static uint8_t debounce = 0;
	static uint16_t last_val = 0;

	ADCC_StartConversion(OM_SPEED);
	while (!ADCC_IsConversionDone()) {
	};
	temp = ADCC_GetConversionResult();

	if (!BUTTON1_GetValue()) { // EMO button
		if (++debounce >= 16) {
			can_move = false; // kill software pulse generation
			OM_EMO_SetHigh(); // trigger EMO signal relay
		}
	}

	if (TimerDone(TMR_PERIOD)) {
		StartTimer(TMR_PERIOD, 100);
		TMR2_Stop();
		TMR2_Period8BitSet((uint8_t) ((temp >> 5) + (uint16_t) 16));
		if ((bool) BUTTON2_GetValue()) { // motor speed range
			T2CON = 0x81;
		} else {
			T2CON = 0x80 + 12;
		}
		TMR2_Start();
	}

	last_val = temp;
	return temp;
}
/**
 End of File
 */