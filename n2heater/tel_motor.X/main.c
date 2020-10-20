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
 * VISTA HC end-station N2 CRYO heater controller for 600W inline heater
 * PWM to about 200W for N2 purge
 * 
 * FLow sensor OMRON D6F-50A6-000
 * TE SSR-480D125
 * Power Supply Mean Well RD-50A
 * Enclosure: CAMDENBOSS  CDIC00005 
 * PIC18F47K42 Touch Board: basic function
 */

#pragma warning disable 520
#pragma warning disable 1498

#include <stdint.h>
#include <stdio.h>
#include "mcc_generated_files/mcc.h"
#include "timer.h"
#include "n2heater.h"
/*
 * software time variables
 */
volatile uint16_t tickCount[TMR_COUNT] = {0}, max_heat_time = 0;

uint32_t flow = 0, temp = 0, count = 0;

const char *build_date = __DATE__, *build_time = __TIME__, build_version[5] = "1.0";

uint16_t controller_work(void);

/*
			 Main application
 */
void main(void)
{
	char buffer[80];
	uint16_t pwm_value = PWM_OFF;

	// Initialize the device
	SYSTEM_Initialize();

	INTERRUPT_GlobalInterruptHighEnable();

	TMR0_StartTimer();
	BLED2_SetHigh(); // boot LED indicator
	WaitMs(5000);
	BLED2_SetLow();
	/*
	 * software timer 1 second PWM cycles
	 */
	StartTimer(TMR_PWM, PWM_DUTY);
	StartTimer(TMR_PERIOD, PWM_MS);
	StartTimer(TMR_LOG, LOGGING);

	while (true) {
		pwm_value = controller_work();
		if (TimerDone(TMR_PERIOD)) {
			StartTimer(TMR_PERIOD, PWM_MS);
			StartTimer(TMR_PWM, pwm_value);
			LED1_SetHigh();
		}
		if (TimerDone(TMR_PWM)) {
			StartTimer(TMR_PWM, PWM_DUTY);
			LED1_SetLow();
		}
		/*
		 * testing logging & WDT reseting every 10 seconds
		 */
		if (TimerDone(TMR_LOG)) {
			StartTimer(TMR_LOG, LOGGING);
			CLRWDT();
			sprintf(buffer, "%lu: Flow %lu, Temp %lu \r\n", count++, flow, temp);
		}
	}
}

/*
 * I/O and program state setting
 */
uint16_t controller_work(void)
{
	static uint16_t pwm_val = PWM_HIGH;

	ADCC_StartConversion(OM_SPEED);
	while (!ADCC_IsConversionDone());

	if ((temp = ADCC_GetConversionResult()) > FLOW_TEMP) {
		pwm_val = PWM_LOW;
	}

	if (!BUTTON1_GetValue()) {
		BLED2_SetHigh();
		LED2_SetHigh();
		return PWM_HIGH;
	}

	ADCC_StartConversion(AIR_FLOW);
	while (!ADCC_IsConversionDone());

	if ((flow = ADCC_GetConversionResult()) > FLOW_RATE) {
		if (max_heat_time >= MAX_HEAT) { // shutdown after a long run
			BLED2_SetLow();
			LED2_SetLow();
			max_heat_time = MAX_HEAT + 1;
			return PWM_OFF;
		} else {
			BLED2_SetHigh();
			LED2_SetHigh();
			return pwm_val;
		}
	} else {
		// flow rate below setpoint, reset max heater time
		max_heat_time = 0;
	}

	BLED2_SetLow();
	LED2_SetLow();
	return PWM_OFF;
}
/**
 End of File
 */