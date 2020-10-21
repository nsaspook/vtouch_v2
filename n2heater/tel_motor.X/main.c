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
float pot_norm = 0.0;

uint16_t flow = 0, temp = 0;
uint32_t count = 0;

const char *build_date = __DATE__, *build_time = __TIME__, build_version[5] = "1.0";

uint16_t controller_work(void);

/*
			 Main application
 */
void main(void)
{
	char buffer[128];
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
	StartTimer(TMR_PWM, PWM_DUTY);
	StartTimer(TMR_PERIOD, PWM_MS);
	StartTimer(TMR_LOG, LOGGING);

	while (true) {
		pwm_value = controller_work();
		/*
		 * testing logging & WDT reseting every 10 seconds
		 */
		if (TimerDone(TMR_LOG)) {
			StartTimer(TMR_LOG, LOGGING);
			CLRWDT();
			sprintf(buffer, "%lu: \r\n", count++);
		}
		if (TimerDone(TMR_PERIOD)) {
			StartTimer(TMR_PERIOD, PWM_MS);
		}
	}
}

/*
 * I/O and program state setting
 */
uint16_t controller_work(void)
{
	static uint16_t clock_val = CLOCK_SLOWEST;

	ADCC_StartConversion(OM_SPEED);
	while (!ADCC_IsConversionDone());
	temp = ADCC_GetConversionResult();
	pot_norm = (float) (temp + 1) / 4095.0;

	if (!BUTTON1_GetValue()) {
		clock_val = CLOCK_SLOWEST;
	}

	ADCC_StartConversion(OM_FLOW);
	while (!ADCC_IsConversionDone());
	flow = ADCC_GetConversionResult();

	if ((clock_val == CLOCK_SLOWEST) && (temp > CLOCK_SLOWEST)) {
		// keep it slow until the ADC value is below CLOCK_SLOWEST value
	} else {
		clock_val = temp; //update clock speed with ADC value
	}

	if (TimerDone(TMR_PERIOD)) {
		StartTimer(TMR_PERIOD, 100);
		TMR2_Stop();
		TMR2_Period8BitSet((temp >> 5) + 16);
		if (BUTTON2_GetValue()) {
			T2CON = 0x80;
		} else {
			T2CON = 0x80 +12;
		}
		TMR2_Start();
	}


	return clock_val;
}
/**
 End of File
 */