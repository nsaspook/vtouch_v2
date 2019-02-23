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
#include <stdio.h>
#include <string.h>
#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/uart1.h"
#include "eadog.h"

extern struct spi_link_type spi_link;

struct V_data V;

/*
			 Main application
 */
void main(void)
{
	uint8_t i;

	// Initialize the device
	SYSTEM_Initialize();

	// Enable high priority global interrupts
	INTERRUPT_GlobalInterruptHighEnable();

	// Enable low priority global interrupts.
	INTERRUPT_GlobalInterruptLowEnable();

	init_display();

	eaDogM_WriteString((char*) "Testing 12345678Testing 12345678Testing 12345678");
	wait_lcd_done();
	V.s_state = SEQ_STATE_INIT;

	while (true) {
		switch (V.s_state) {
		case SEQ_STATE_INIT:
			V.s_state = SEQ_STATE_RUN;
			break;
		case SEQ_STATE_RUN:
			/*
			 * Do something
			 */
			if (UART1_is_tx_ready() > 30) {
				for (i = 0; i <= 30; i++) {
					UART1_Write(0x4f);
				}
			}

			if (PRLOCKbits.PRLOCKED) {
				strcpy(V.buf, "Testing 12345678Testing 12345678Testing 12345678");
			} else {
				strcpy(V.buf, "Test");
			}
			V.s_state = SEQ_STATE_SET;
			break;
		case SEQ_STATE_SET:
			eaDogM_WriteString(V.buf);
			V.s_state = SEQ_STATE_TRIGGER;
			break;
		case SEQ_STATE_TRIGGER:
			DEBUG1_SetHigh();
			if (wait_lcd_check())
				V.s_state = SEQ_STATE_DONE;
			DEBUG1_SetLow();
			break;
		case SEQ_STATE_DONE:
			wait_lcd_done();
			DEBUG2_SetHigh();
			V.s_state = SEQ_STATE_RUN;
			break;
		case SEQ_STATE_ERROR:
		default:
			V.s_state = SEQ_STATE_INIT;
			break;
		}
	}
}
/**
 End of File
 */