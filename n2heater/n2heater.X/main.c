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

#pragma warning disable 520
#pragma warning disable 1498

#include <stdint.h>
#include "mcc_generated_files/mcc.h"
#include "timer.h"

volatile uint16_t tickCount[TMR_COUNT] = {0};
uint16_t controller_work(void);

/*
			 Main application
 */
void main(void)
{
	uint16_t pwm_value = 1;
	// Initialize the device
	SYSTEM_Initialize();

	INTERRUPT_GlobalInterruptHighEnable();

	StartTimer(TMR_PWM, 200);
	StartTimer(TMR_PERIOD, 100);
	SSR_PWM_SetHigh();
	TMR0_StartTimer();

	while (true) {
		pwm_value = controller_work();
		if (TimerDone(TMR_PERIOD)) {
			StartTimer(TMR_PERIOD, 100);
			StartTimer(TMR_PWM, pwm_value);
			SSR_PWM_SetHigh();
			LED1_SetHigh();
		}
		if (TimerDone(TMR_PWM)) {
			StartTimer(TMR_PWM, 200);
			SSR_PWM_SetLow();
			LED1_SetLow();
		}
	}
}

uint16_t controller_work(void)
{
	ADCC_StartConversion(AIR_FLOW);
	while (!ADCC_IsConversionDone());

	if (ADCC_GetConversionResult() > 350) {
		BLED2_SetHigh();
		LED2_SetHigh();
		return 33;
	}
	BLED2_SetLow();
	LED2_SetLow();
	return 1;
}
/**
 End of File
 */