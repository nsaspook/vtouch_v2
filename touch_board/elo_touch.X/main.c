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
	Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.76
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

#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/uart1.h"
#include "mcc_generated_files/uart2.h"
#include "timers.h"
#include "d232.h"


volatile uint16_t tickCount[TMR_COUNT] = {0};
A_data IO = {
	.speed = 10,
	.speed_update = true,
	.sequence_done = false,
	.seq_value = DEFAULT_SEQ,
	.misses = 0,
};
IN_data *switches = (IN_data *) & IO.inbytes[0];
OUT_data1 *sounds = (OUT_data1 *) & IO.outbytes[1];

void work_sw(void)
{
	if (TimerDone(TMR_INIT)) {
		StartTimer(TMR_INIT, 1000);
	}
}

/*
			 Main application
 */
void main(void)
{
	uint8_t x = 0, y = 0;
	// Initialize the device
	SYSTEM_Initialize();

	// If using interrupts in PIC18 High/Low Priority Mode you need to enable the Global High and Low Interrupts
	// If using interrupts in PIC Mid-Range Compatibility Mode you need to enable the Global Interrupts
	// Use the following macros to:

	// Enable high priority global interrupts
	INTERRUPT_GlobalInterruptHighEnable();

	// Enable low priority global interrupts.
	INTERRUPT_GlobalInterruptLowEnable();

	// Disable high priority global interrupts
	//INTERRUPT_GlobalInterruptHighDisable();

	// Disable low priority global interrupts.
	//INTERRUPT_GlobalInterruptLowDisable();

	IO.input_ok = false;
	IO.output_ok = false;
	IO.d232 = D232_IDLE;
	IO.io = IO_IDLE;

	StartTimer(TMR_INIT, 1000);
	Digital232_init();

	while (1) {
		// Add your application code
		work_sw();
		if (Digital232_RW() && switches->detonator)
			led_lightshow(IO.seq_value, 1);

		if (!switches->detonator) {
			IO.outbytes[1] = IO.outbytes[1] | CHIRP;
			if (IO.outbytes[2]&0b00000001) { // display byte patterns
				if (TimerDone(TMR_EXTRA)) {
					IO.outbytes[1] = IO.outbytes[1] | WARP;
					if (IO.speed_update && IO.speed-- < 2) {
						IO.speed = 10;
						IO.sequence_done = true;
						IO.seq_value = WIN_SEQ;
					}
					IO.speed_update = false;
					IO.misses = 0;
				}
			}

			if (IO.outbytes[2]&0b10000000) {
				if (TimerDone(TMR_EXTRA)) {
					IO.outbytes[1] = IO.outbytes[1] | SIREN;
					if (IO.speed_update && IO.speed-- < 2) {
						IO.speed = 10;
						IO.sequence_done = true;
						IO.seq_value = WIN_SEQ;
					}
					IO.speed_update = false;
					IO.misses = 0;
				}
			}

			if (IO.outbytes[2]&0b01111110) {
				if (IO.speed_update && (IO.misses++ > 7)) {
					IO.misses = 0;
					//IO.speed++;
					IO.speed_update = false;
				}
			}
		} else {
			StartTimer(TMR_EXTRA, 500);
			IO.outbytes[1] = IO.outbytes[1] & (~CHIRP);
			IO.outbytes[1] = IO.outbytes[1] & (~WARP);
			IO.outbytes[1] = IO.outbytes[1] & (~SIREN);
			IO.speed_update = true;
			if (TimerDone(TMR_SEQ))
				IO.seq_value = DEFAULT_SEQ;
		}

	}
}
/**
 End of File
 */