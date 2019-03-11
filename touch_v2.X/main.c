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
#include "gemsecs.h"
#include "timers.h"

extern struct spi_link_type spi_link;

struct V_data V;
struct header10 H10[] = {
	{ // S1F1 send 'are you there?' from host
		.length = 10,
		.block.block.rbit = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 1,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 0x000c9f75,
	},
	{ // all stream and function header receive buffer from equipment
		.length = 10,
	},
	{ // S1F0 send 'ABORT' from host
		.length = 10,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 1,
		.block.block.function = 0,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
	{ // S1F1 send 'are you there?' from equipment
		.length = 10,
		.block.block.rbit = 1,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 1,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 0x00000d89,
	},
	{ // S2F17 send 'date and time request?' from host
		.length = 10,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 2,
		.block.block.function = 17,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 0x00000d89,
	},
};

struct header12 H12[] = {
	{ // S1F2 send 'yes, were are here ' from host
		.length = 12,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 2,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[1] = 1,
		.data[0] = 0,
	},
};

struct header13 H13[] = {
	{ // S6F12 send 'online' reply from host
		.length = 13,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 6,
		.block.block.function = 12,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[2] = 0x21,
		.data[1] = 0x01,
		.data[0] = 0x00,
	},
};

struct header14 H14[] = {
	{ // S1F4 send 'status response ' from host
		.length = 14,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 4,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[3] = 0x01,
		.data[2] = 0x11,
		.data[1] = 0x41,
		.data[0] = 0x00,
	},
};

struct header17 H17[] = {
	{ // S1F14 send 'online response ' from host
		.length = 17,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 14,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[0] = 0x00,
		.data[1] = 0x01,
		.data[2] = 0x00,
		.data[3] = 0x01,
		.data[4] = 0x21,
		.data[5] = 0x02,
		.data[6] = 0x01,
	},
};

struct header18 H18[] = {
	{ // S1F3 send 'status request ' from host
		.length = 18,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 3,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
};

struct header24 H24[] = {
	{ // S2F18 send 'host time ' from host
		.length = 24,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 2,
		.block.block.function = 18,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data = "010911084600",
	},
};

struct header27 H27[] = {
	{ // S1F13 send 'online request ' from equipment
		.length = 27,
		.block.block.rbit = 1,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 13,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
};

struct header53 H53[] = {
	{ // S1F11 send 'online' command from host
		.length = 53,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 11,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
	{ // S10F3 send 'terminal text display ' command from host
		.length = 53,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 10,
		.block.block.function = 3,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data = "\x000\x016 Now We Are Talking...",
	},
};

struct header10 r_block;

volatile uint16_t tickCount[TMR_COUNT] = {0};

/*
			 Main application
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

	while (true) {
		switch (V.ui_state) {
		case UI_STATE_INIT:
			init_display();
			eaDogM_CursorOff();
			RELAY0_SetLow();
			mode = SW0_GetValue() + UI_STATE_EQUIP; /* link configuration host/equipment/etc ... */
			if (!SW1_GetValue()) {
				RELAY0_SetHigh();
				mode = UI_STATE_LOG;
			}
			V.ui_state = mode;
			V.s_state = SEQ_STATE_INIT;
#ifdef TESTING
			uint8_t j;
			uint16_t sum;

			j = 3; // set H10 block for testing
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
			wait_lcd_done();
			eaDogM_WriteString(V.buf);

			secs_send((uint8_t*) & H10[j], sizeof(header10), false);
			sprintf(V.buf, " C 0x%04x #", V.t_checksum);
			wait_lcd_done();
			eaDogM_WriteString(V.buf);
#else
			sprintf(V.buf, " RVI HOST TESTER");
			wait_lcd_done();
			eaDogM_WriteStringAtPos(0, 0, V.buf);
			sprintf(V.buf, " Version %s", VER);
			wait_lcd_done();
			eaDogM_WriteStringAtPos(1, 0, V.buf);
			sprintf(V.buf, " FGB@MCHP FAB4");
			wait_lcd_done();
			eaDogM_WriteStringAtPos(2, 0, V.buf);
#endif
			WaitMs(3000);
			break;
		case UI_STATE_HOST: //slave
			switch (V.s_state) {
			case SEQ_STATE_INIT:
				V.r_l_state = LINK_STATE_IDLE;
				V.t_l_state = LINK_STATE_IDLE;
				V.s_state = SEQ_STATE_RX;
				DEBUG2_SetLow();
#ifdef DB1
				WaitMs(50);
				UART1_put_buffer(ENQ);
#endif
				break;
			case SEQ_STATE_RX:
				/*
				 * receive message from equipment
				 */
				if (r_protocol(&V.r_l_state) == LINK_STATE_DONE) {
					DEBUG2_SetLow();
					sprintf(V.buf, " S%dF%d #    ", V.stream, V.function);
					V.buf[11] = 0; // string size limit
					wait_lcd_done();
					eaDogM_WriteStringAtPos(0, 0, V.buf);
#ifdef DB1
					WaitMs(5);
#endif
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
					DEBUG2_SetLow();
					V.s_state = SEQ_STATE_TRIGGER;
				}
				if (V.t_l_state == LINK_STATE_ERROR)
					V.s_state = SEQ_STATE_ERROR;
				break;
			case SEQ_STATE_TRIGGER:
				V.s_state = SEQ_STATE_DONE;
				sprintf(V.buf, " OK #");
				DEBUG2_SetLow();
				wait_lcd_done();
				eaDogM_WriteStringAtPos(0, 11, V.buf);

				break;
			case SEQ_STATE_DONE:
				V.s_state = SEQ_STATE_INIT;
				DEBUG2_SetLow();
				break;
			case SEQ_STATE_ERROR:
			default:
				V.s_state = SEQ_STATE_INIT;
				sprintf(V.buf, " ERR R%d T%d E%d A%d #", V.r_l_state, V.t_l_state, V.error, V.abort);
				wait_lcd_done();
				eaDogM_WriteStringAtPos(2, 0, V.buf);
				break;
			}
			if (!V.error && !V.abort) {
				sprintf(V.buf, " HOST MODE %ld   #", V.ticks);
				V.buf[16] = 0; // string size limit
				wait_lcd_done();
				eaDogM_WriteStringAtPos(2, 0, V.buf);
			}
			break;
		case UI_STATE_EQUIP: // master
			sprintf(V.buf, " EQUIP MODE    #");
			V.buf[16] = 0; // string size limit
			wait_lcd_done();
			eaDogM_WriteStringAtPos(2, 0, V.buf);
			break;
		case UI_STATE_LOG: // monitor
			sprintf(V.buf, " LOG MODE      #");
			V.buf[16] = 0; // string size limit
			wait_lcd_done();
			eaDogM_WriteStringAtPos(2, 0, V.buf);
			break;
		case UI_STATE_ERROR:
		default:
			V.ui_state = UI_STATE_INIT;
			break;
		}
		DEBUG1_SetHigh();
		sprintf(V.buf, " R%d T%d FR%d FS%d #", V.r_l_state, V.t_l_state, V.failed_receive, V.failed_send);
		V.buf[16] = 0; // string size limit
		wait_lcd_done();
		eaDogM_WriteStringAtPos(1, 0, V.buf);
		DEBUG1_SetLow();
		DEBUG2_SetHigh();
		++V.ticks; // transaction ID for master messages
	}
}
/**
 End of File
 */