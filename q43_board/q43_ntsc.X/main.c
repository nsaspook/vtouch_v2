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
	Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.6
	Device            :  PIC18F47Q43
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

#include <stdlib.h>
#include <stdbool.h>
#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/tmr5.h"
#include "qconfig.h"
#include "vtouch.h"
#include "vtouch_build.h"
#include "timers.h"
#include "eadog.h"
#include "ntsc.h"

volatile uint16_t tickCount[TMR_COUNT];
char buffer[256];

void rxtx_handler(void);
void led_flash(void);

/*
 * main program loop processing
 */
void rxtx_handler(void) // timer & serial data transform functions are handled here
{
	if (TimerDone(TMR_DIS)) {
		BLED_Toggle();
		sprintf(buffer, "%lu,%u    ", vcounts++, vfcounts);
		eaDogM_WriteStringAtPos(3, 0, buffer);
		sprintf(buffer, "%NTSC      ");
		eaDogM_WriteStringAtPos(0, 0, buffer);
		StartTimer(TMR_DIS, 500);
	}
}

/*
			 Main application
 */
void main(void)
{

	// Initialize the device
	SYSTEM_Initialize();
	TMR5_SetInterruptHandler(led_flash);
	ntsc_init();

	// Enable high priority global interrupts
	INTERRUPT_GlobalInterruptHighEnable();

	// Enable low priority global interrupts.
	INTERRUPT_GlobalInterruptLowEnable();

	SPI1CON0bits.EN = 1;
	init_display();
	sprintf(buffer, "%s ", build_version);
	eaDogM_WriteStringAtPos(0, 0, buffer);
	sprintf(buffer, "%s ", build_date);
	eaDogM_WriteStringAtPos(1, 0, buffer);
	sprintf(buffer, "%s ", build_time);
	eaDogM_WriteStringAtPos(2, 0, buffer);
	BLED_SetLow();

	StartTimer(TMR_DIS, 500);

	TMR6_Stop(); // disable software timers to stop scan-line jitter
	while (true) {
		// Add your application code
		//				rxtx_handler();
	}
}

/*
 * This runs in the timer5 ISR
 */
void led_flash(void)
{
	LED2_Toggle();
//	ntsc_flip = !ntsc_flip;
//	scan_line++;
}
/**
 End of File
 */