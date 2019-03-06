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
#ifndef __DEFINED_int24_t
typedef signed long long int24_t;
#define __DEFINED_int24_t
#endif

#include <stdio.h>
#include <string.h>
#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/uart1.h"
#include "eadog.h"
#include "gemsecs.h"
#include "timers.h"

extern struct spi_link_type spi_link;

struct V_data V;
struct header10 H10[] = {
	{ // S1F1 send
		.length = 10,
		.block.block.rbit = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 1,
		.block.block.ebit = 1,
		.block.block.bidl = 1,
		.block.block.systemb = 0x0c9f75,
	},
	{ // S1F1 receive
		.length = 10,
		.block.block.rbit = 1,
		.block.block.wbit = 1,
		.block.block.stream = 2,
		.block.block.function = 0x11,
		.block.block.ebit = 1,
		.block.block.bidl = 1,
		.block.block.systemb = 0x1b,
	},
};

struct header12 H12[] = {
	{ // S1F2 send
		.length = 12,
		.block.block.rbit = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 1,
		.block.block.ebit = 1,
		.block.block.bidl = 1,
		.block.block.systemb = 0x0c9f75,
	},
	{ // S2F2 receive
		.length = 12,
		.block.block.rbit = 1,
		.block.block.wbit = 1,
		.block.block.stream = 2,
		.block.block.function = 0x11,
		.block.block.ebit = 1,
		.block.block.bidl = 1,
		.block.block.systemb = 0x1b,
	},
};

struct header12 H13[] = {
	{ // S6F12 send
		.length = 13,
		.block.block.rbit = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 1,
		.block.block.ebit = 1,
		.block.block.bidl = 1,
		.block.block.systemb = 0x0c9f75,
	},
	{ // S6F12 receive
		.length = 13,
		.block.block.rbit = 1,
		.block.block.wbit = 1,
		.block.block.stream = 2,
		.block.block.function = 0x11,
		.block.block.ebit = 1,
		.block.block.bidl = 1,
		.block.block.systemb = 0x1b,
	},
};

struct header10 r_block;

volatile uint16_t tickCount[TMR_COUNT] = {0};

/*
			 Main application
 */
void main(void)
{
	uint8_t i, j = 0, *k;
	uint16_t sum;
	UI_STATES mode = UI_STATE_HOST; /* link configuration host/equipment/etc ... */

	// Initialize the device
	SYSTEM_Initialize();

	// Enable high priority global interrupts
	INTERRUPT_GlobalInterruptHighEnable();

	// Enable low priority global interrupts.
	INTERRUPT_GlobalInterruptLowEnable();

	V.ui_state = UI_STATE_INIT;

	while (true) {
		switch (V.ui_state) {
		case UI_STATE_INIT:
			init_display();
			sum = block_checkmark((uint8_t*) & H10[j].block.block, sizeof(block10));
			H10[j].checksum = sum;
			sprintf(V.buf, "M %d, H %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x, C 0x%04x",
				mode,
				H10[j].block.b[9],
				H10[j].block.b[8],
				H10[j].block.b[7],
				H10[j].block.b[6],
				H10[j].block.b[5],
				H10[j].block.b[4],
				H10[j].block.b[3],
				H10[j].block.b[2],
				H10[j].block.b[1],
				H10[j].block.b[0],
				sum);
			eaDogM_WriteString(V.buf);
			wait_lcd_done();
			V.ui_state = mode;
			V.s_state = SEQ_STATE_INIT;
			V.r_l_state = LINK_STATE_IDLE;
			V.t_l_state = LINK_STATE_IDLE;
			break;
		case UI_STATE_HOST:
			switch (V.s_state) {
			case SEQ_STATE_INIT:
				V.s_state = SEQ_STATE_RUN;
				break;
			case SEQ_STATE_RUN:
				/*
				 * Do something
				 */
				r_protocol(&V.r_l_state);
				//				t_protocol(&V.t_l_state);

				k = (void*) &H10[j];
				if (UART1_is_tx_ready() > 30) {
					for (i = sizeof(header10); i > 0; i--) {
						UART1_Write(k[i - 1]);
					}
				}
				StartTimer(TMR_T1, 20);
				V.s_state = SEQ_STATE_DONE;
				break;
			case SEQ_STATE_SET:
				//eaDogM_WriteString(V.buf);
				V.s_state = SEQ_STATE_TRIGGER;
				break;
			case SEQ_STATE_TRIGGER:
				DEBUG1_SetHigh();
				if (wait_lcd_check())
					V.s_state = SEQ_STATE_DONE;
				DEBUG1_SetLow();
				break;
			case SEQ_STATE_DONE:
				if (TimerDone(TMR_T1)) {
					V.s_state = SEQ_STATE_RUN;
				}
				break;
			case SEQ_STATE_ERROR:
			default:
				V.s_state = SEQ_STATE_INIT;
				break;
			}
			break;
		case UI_STATE_ERROR:
		default:
			V.ui_state = UI_STATE_INIT;
			break;
		}
	}
}
/**
 End of File
 */