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

V_data V = {
	.error = false,
	.uart = 1,
	.g_state = GEM_STATE_DISABLE,
	.ticker = 45,
	.checksum_error = 0,
	.timer_error = 0,
};

header10 H10[] = {
	{ // S1F1 send 'are you there?' from host to equipment
		.length = 10,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 1,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
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
	{ // S1F1 send 'are you there?' from equipment to host
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
		.block.block.systemb = 1,
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
		.block.block.systemb = 1,
	},
	{ // S1F15 send 'request off-line ' from host
		.length = 10,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 15,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
	{ // S1F17 send 'request on-line ' from host
		.length = 10,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 17,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
};

header12 H12[] = {
	{ // S1F2 send 'yes, we are here ' from host
		.length = 12,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 1,
		.block.block.function = 2,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[1] = 1,
		.data[0] = 0,
	},
	{ // S1F13 send 'online request ' from host to equipment
		.length = 12,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 13,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[1] = 1,
		.data[0] = 0,
	},
};

header13 H13[] = {
	{ // S6F12 send 'online' reply from host
		.length = 13,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
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
	{ // S10F2 send 'terminal' reply from host
		.length = 13,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 10,
		.block.block.function = 2,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[2] = 0x21,
		.data[1] = 0x01,
		.data[0] = 0x00,
	},
};

header14 H14[] = {
	{ // S1F4 send 'status response ' from host
		.length = 14,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
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

header17 H17[] = {
	{ // S1F14 send 'online response ' from host to equipment
		.length = 17,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 1,
		.block.block.function = 14,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[6] = 0x01,
		.data[5] = 0x02,
		.data[4] = 0x21,
		.data[3] = 0x01,
		.data[2] = 0x00,
		.data[1] = 0x01,
		.data[0] = 0x00,
	},
};

header24 H24[] = {
	{ // S2F18 send 'host time ' from host to equipment
		.length = 24,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 2,
		.block.block.function = 18,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data = "A 010911084600",
	},
};

#ifdef DB2
header27 H27[] = {
	{ // S1F13 send 'online request ' from equipment to host for TESTING
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
#endif

header53 H53[] = {
	{ // S10F3 send 'terminal text display ' command from host to equipment
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
		.data[42] = 0x01,
		.data[41] = 0x02,
		.data[40] = 0x21,
		.data[39] = 0x01,
		.data[38] = 0x00,
		.data[37] = 0x41,
		.data[36] = 0x01,
		.data[35] = 43,
		.data[34] = 'F',
		.data[33] = 'R',
		.data[32] = 'E',
		.data[31] = 'D',
	},
};

header254 H254[] = {
	{ // general message buffer
		.length = 254,
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
	},
};

header10 r_block;

volatile uint16_t tickCount[TMR_COUNT] = {0};
volatile uint8_t mode_sw = false;

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

	/*
	 * RS-232 link I/O relay defaults to monitor/log mode with no power
	 */
	WaitMs(300); // wait for mode switch to settle
	if (RB0_GetValue()) {
		mode = UI_STATE_HOST;
	} else {
		mode = UI_STATE_LOG;
	}

	if (mode == UI_STATE_HOST) {
		RELAY0_SetHigh();
		OUT_PIN1_SetHigh(); // mode switch indicator lamp
	} else {
		RELAY0_SetLow();
		OUT_PIN1_SetLow();
	}

	while (true) {
		switch (V.ui_state) {
		case UI_STATE_INIT:
			init_display();
			eaDogM_CursorOff();

			V.ui_state = mode;
			V.s_state = SEQ_STATE_INIT;
			srand(1957);
			sprintf(V.buf, " RVI HOST TESTER");
			wait_lcd_done();
			eaDogM_WriteStringAtPos(0, 0, V.buf);
			sprintf(V.buf, " Version %s", VER);
			wait_lcd_done();
			eaDogM_WriteStringAtPos(1, 0, V.buf);
			sprintf(V.buf, " FGB@MCHP FAB4");
			wait_lcd_done();
			eaDogM_WriteStringAtPos(2, 0, V.buf);
			WaitMs(3000);
			break;
		case UI_STATE_HOST: //slave
			switch (V.s_state) {
			case SEQ_STATE_INIT:
				V.r_l_state = LINK_STATE_IDLE;
				V.t_l_state = LINK_STATE_IDLE;
				V.s_state = SEQ_STATE_RX;
				if ((V.error == LINK_ERROR_NONE) && (V.abort == LINK_ERROR_NONE)) {
					sprintf(V.buf, "HOST: %ld G%d      #", V.ticks, V.g_state);
					V.buf[16] = 0; // string size limit
					wait_lcd_done();
					eaDogM_WriteStringAtPos(2, 0, V.buf);
				}
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
					sprintf(V.buf, " S%dF%d #    ", V.stream, V.function);
					V.buf[11] = 0; // string size limit
					wait_lcd_done();
					eaDogM_WriteStringAtPos(0, 0, V.buf);
#ifdef DB1
					WaitMs(5);
#endif
					if (V.wbit) { // check for receive only messages
						V.s_state = SEQ_STATE_TX;
						V.failed_send = false;
						V.t_l_state = LINK_STATE_IDLE;
					} else { // don't send a reply
						V.s_state = SEQ_STATE_TRIGGER;
					}
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
				if (V.queue) {
					V.r_l_state = LINK_STATE_IDLE;
					V.t_l_state = LINK_STATE_IDLE;
					V.s_state = SEQ_STATE_TX;
					sprintf(V.buf, " OKQ#");
				} else {
					V.s_state = SEQ_STATE_DONE;
					sprintf(V.buf, " OK #");
				}
				wait_lcd_done();
				eaDogM_WriteStringAtPos(0, 11, V.buf);
				break;
			case SEQ_STATE_DONE:
				V.s_state = SEQ_STATE_INIT;
				break;
			case SEQ_STATE_ERROR:
			default:
				V.s_state = SEQ_STATE_INIT;
				sprintf(V.buf, "E%d A%d T%d C%d #", V.error, V.abort, V.timer_error, V.checksum_error);
				V.buf[16] = 0; // string size limit
				wait_lcd_done();
				eaDogM_WriteStringAtPos(2, 0, V.buf);
				WaitMs(2000);
				break;
			}
			if ((V.error == LINK_ERROR_NONE) && (V.abort == LINK_ERROR_NONE)) {
				sprintf(V.buf, "HOST: %ld G%d      #", V.ticks, V.g_state);
				V.buf[16] = 0; // string size limit
				wait_lcd_done();
				eaDogM_WriteStringAtPos(2, 0, V.buf);
			}
			break;
		case UI_STATE_LOG: // monitor
			switch (V.s_state) {
			case SEQ_STATE_INIT:
				V.m_l_state = LINK_STATE_IDLE;
				V.s_state = SEQ_STATE_RX;
				sprintf(V.buf, "LOG: U%d G%d %d %d      #", V.uart, V.g_state, V.timer_error, V.checksum_error);
				V.buf[16] = 0; // string size limit
				wait_lcd_done();
				eaDogM_WriteStringAtPos(2, 0, V.buf);
#ifdef DB1
				if (SLED) {
					UART2_put_buffer(ENQ);
				} else {
					UART1_put_buffer(ENQ);
				}
#endif
				break;
			case SEQ_STATE_RX:
				/*
				 * receive rx and tx messages from comm link
				 */
				if (m_protocol(&V.m_l_state) == LINK_STATE_DONE) {
					sprintf(V.buf, " S%dF%d #%ld      ", V.stream, V.function, V.ticks);
					V.buf[13] = 0; // string size limit
					wait_lcd_done();
					eaDogM_WriteStringAtPos(V.uart - 1, 0, V.buf);
					V.s_state = SEQ_STATE_TRIGGER;
				}
				if (V.m_l_state == LINK_STATE_ERROR)
					V.s_state = SEQ_STATE_ERROR;
				break;
			case SEQ_STATE_TRIGGER:
				V.s_state = SEQ_STATE_DONE;
				sprintf(V.buf, " OK #");
				wait_lcd_done();
				eaDogM_WriteStringAtPos(V.uart - 1, 13, V.buf);
				break;
			case SEQ_STATE_DONE:
				V.s_state = SEQ_STATE_INIT;
				break;
			case SEQ_STATE_ERROR:
			default:
				V.s_state = SEQ_STATE_INIT;
				break;
			}
			sprintf(V.buf, "LOG: U%d G%d %d %d      #", V.uart, V.g_state, V.timer_error, V.checksum_error);
			V.buf[16] = 0; // string size limit
			wait_lcd_done();
			eaDogM_WriteStringAtPos(2, 0, V.buf);
			break;
		case UI_STATE_ERROR:
		default:
			V.ui_state = UI_STATE_INIT;
			break;
		}
		DEBUG2_SetHigh();
		if (V.ticks) {
			if (V.failed_receive) {
				BILED1_1_SetLow(); // red
				BILED1_2_SetHigh();
			} else {
				BILED1_1_SetHigh(); //green
				BILED1_2_SetLow();
			}
			if (V.failed_send) {
				BILED2_1_SetLow(); // red
				BILED2_2_SetHigh();
			} else {
				BILED2_1_SetHigh(); //green
				BILED2_2_SetLow();
			}
		}
		sprintf(V.buf, "R%d %d, T%d %d C%d      #", V.r_l_state, V.failed_receive, V.t_l_state, V.failed_send, V.checksum_error);
		V.buf[16] = 0; // string size limit
		wait_lcd_done();
		if (mode != UI_STATE_LOG)
			eaDogM_WriteStringAtPos(1, 0, V.buf);
		DEBUG2_SetLow();
	}
}
/**
 End of File
 */