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
	{ // S1F1 send 'are you there?'
		.length = 10,
		.block.block.rbit = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 1,
		.block.block.ebit = 1,
		.block.block.bidl = 1,
		.block.block.systemb = 0x000c9f75,
	},
	{ // all stream and function header receive buffer
		.length = 10,
	},
	{ // S1F0 send 'ABORT'
		.length = 10,
		.block.block.rbit = 0,
		.block.block.wbit = 0,
		.block.block.stream = 1,
		.block.block.function = 0,
		.block.block.ebit = 1,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
};

struct header12 H12[] = {
	{ // S1F2 send 'yes, were are here '
		.length = 12,
		.block.block.rbit = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 2,
		.block.block.ebit = 1,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
};

struct header13 H13[] = {
	{ // S6F12 send 'online'
		.length = 13,
		.block.block.rbit = 0,
		.block.block.wbit = 1,
		.block.block.stream = 6,
		.block.block.function = 12,
		.block.block.ebit = 1,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
};

struct header14 H14[] = {
	{ // S1F4 send 'status response '
		.length = 14,
		.block.block.rbit = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 4,
		.block.block.ebit = 1,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
};

struct header18 H18[] = {
	{ // S1F3 send 'status request '
		.length = 18,
		.block.block.rbit = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 3,
		.block.block.ebit = 1,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
};

struct header24 H24[] = {
	{ // S2F18 send 'host time '
		.length = 24,
		.block.block.rbit = 0,
		.block.block.wbit = 1,
		.block.block.stream = 2,
		.block.block.function = 18,
		.block.block.ebit = 1,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
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
			sum = block_checksum((uint8_t*) & H10[j].block.block, sizeof(block10));
			H10[j].checksum = sum;
			sprintf(V.buf, "M %d, H %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x, C 0x%04x #",
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

			secs_send((uint8_t*) & H10[j], sizeof(header10), false);
			sprintf(V.buf, " C 0x%04x #", sum);
			eaDogM_WriteString(V.buf);
			wait_lcd_done();

			break;
		case UI_STATE_HOST:
			switch (V.s_state) {
			case SEQ_STATE_INIT:
				V.r_l_state = LINK_STATE_IDLE;
				V.t_l_state = LINK_STATE_IDLE;
				V.s_state = SEQ_STATE_RX;
				break;
			case SEQ_STATE_RX:
				/*
				 * receive message from equipment
				 */
				if (r_protocol(&V.r_l_state) == LINK_STATE_DONE) {
					sprintf(V.buf, " S%dF%d #", V.stream, V.function);
					eaDogM_WriteString(V.buf);
					wait_lcd_done();
					V.s_state = SEQ_STATE_TX;
				}
				if (V.r_l_state == LINK_STATE_ERROR)
					V.s_state = SEQ_STATE_ERROR;
				break;
			case SEQ_STATE_TX:
				/*
				 * send response message to equipment
				 */
				if (t_protocol(&V.t_l_state) == LINK_STATE_DONE) {
					V.s_state = SEQ_STATE_TRIGGER;
				}
				if (V.t_l_state == LINK_STATE_ERROR)
					V.s_state = SEQ_STATE_ERROR;
				break;
			case SEQ_STATE_TRIGGER:
				DEBUG1_SetHigh();
				sprintf(V.buf, " OK #");
				eaDogM_WriteString(V.buf);
				if (wait_lcd_check())
					V.s_state = SEQ_STATE_DONE;
				DEBUG1_SetLow();
				break;
			case SEQ_STATE_DONE:
				V.s_state = SEQ_STATE_INIT;
				break;
			case SEQ_STATE_ERROR:
			default:
				UART1_Write(NAK);
				sprintf(V.buf, " ERR R%d T%d E%d #", V.r_l_state, V.t_l_state, V.error);
				eaDogM_WriteString(V.buf);
				wait_lcd_done();
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