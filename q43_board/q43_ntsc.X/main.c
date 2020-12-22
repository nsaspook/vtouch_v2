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

/*
 * HOST RS-232  5-1     uC port1
 * Female       2-2-tx
 *              3-3-rx
 * LCD  RS-232  5-1     uC port2
 * Male         2-3-rx
 *              3-2-tx
 *
 * HFBR-0501Z light link converter for front screen touch interface
 *
 */

/* E220/E500 terminal code
 * This application is designed for use with the
 * 47Q43 touch_board
 * 
 * HOST RS-232  5-1     uC port1
 * Female       2-2-tx
 *              3-3-rx
 * LCD  RS-232  5-1     uC port2
 * Male         2-3-rx
 *              3-2-tx
 */

//#define DEBUG_CAM

typedef struct reporttype {
	uint8_t headder, status;
	uint16_t x_cord, y_cord, z_cord;
	uint8_t checksum;
	uint8_t tohost;
} reporttype;

typedef struct statustype {
	int32_t alive_led, touch_count, resync_count, rawint_count, status_count, lcd_count;
	uint8_t host_write : 1;
	uint8_t scrn_write : 1;
	uint8_t do_cap : 1;
	uint8_t comm_check, init_check, touch_good, cam_time;
	uint16_t restart_delay;
} statustype;

typedef struct disp_state_t {
	bool CATCH, TOUCH, UNTOUCH, LCD_OK,
	SCREEN_INIT,
	CATCH46, CATCH37, TSTATUS,
	DATA1, DATA2, CAM;
	uint16_t c_idx, ts_type;
	int16_t speedup;
} disp_state_t;

/*
 * Old monitors
 * E779866	SecureTouch  use DELL_E215546 setting
 * E215546	IntelliTouch use DELL_E215546 setting
 * NEW REPLACEMENT MONITORS 1990L 1991L
 * E328700	IntelliTouch use DELL_E215546 setting
 * E328497	IntelliTouch use DELL_E215546 setting
 * E483757	new remote OSD
 * E005277	power brick
 * 
 * TS_TYPE	0 Original CRT type screens
 *		1 OEM LCD screens
 * 
 * SV4 jumpers
 * 1-2 off default: DELL_E215546
 * 3-4 off default: E220/E500
 * 5-6 off default: OEM CRT
 * 
 */

enum oem_type {
	OEM_CRT = 0, OEM_LCD = 1
};

disp_state_t S = {
	.ts_type = OEM_LCD,
	.TSTATUS = true,
};

enum screen_type_t {
	DELL_E215546, OTHER_SCREEN
};

enum emulat_type_t {
	VIISION, E220, OTHER_MECH
};

enum screen_type_t screen_type;
enum emulat_type_t emulat_type;

int32_t j = 0;
float xs = X_SCALE, ys = Y_SCALE, xs_ss = X_SCALE_SS, ys_ss = Y_SCALE_SS; // defaults

uint8_t elobuf[BUF_SIZE], elobuf_out[BUF_SIZE_V80], elobuf_in[BUF_SIZE_V80], xl = X_LOGICAL, yl = Y_LOGICAL;
uint8_t ssbuf[BUF_SIZE];

struct reporttype ssreport;
struct statustype status = {
	.do_cap = false,
};

const uint8_t elocodes_s_v[] = {
	0x0d, 0x0d, 0x0d, 0x0d, 0x0d, 0x3c, 0x2b, 0x44, 0x25, 0x29, 0x44, 0x3d, 0x2a, 0x37
}; // initial carrol-touch config codes, tracking, add end point modifier, get frame size report

const uint8_t elocodes[ELO_SEQ_V80][ELO_SIZE_I_V80] = {// elo 2210/2216 program codes
	'U', 'M', 0x00, 0x87, 0x40, '0', '0', '0', '0', '0', // initial touch,stream Point,untouch,Z-axis,no scaling, tracking
	'U', 'S', 'X', 0x00, 0x0ff, 0x00, 0x01, '0', '0', '0', // scale x: X,Y,Z scaling Not Used
	'U', 'S', 'Y', 0x00, 0x0ff, 0x00, 0x01, '0', '0', '0', // scale y
	'U', 'S', 'Z', 0x00, 0x01, 0x00, 0x0f, '0', '0', '0', // scale z
	'U', 'B', 5, 20, 0x00, 0x00, 0x0f, '0', '0', '0', // packet delays to match old terminal
	'U', 'E', '1', '6', '0', '0', '0', '0', '0', '0', // emulation E281A-4002 Binary (Z=1-255 on touch, Z=0 on untouch)
	'U', 'N', '1', '7', '0', '0', '0', '0', '0', '0', // nvram save
	'U', 'R', '2', '0', '0', '0', '0', '0', '0', '0', // nvram reset
}; // initial intelli-touch codes

const uint8_t elocodes_m_e[] = {// 5 char, soft-reset,touch scanning off, report transfer on, (0x26) tracking mode, report transfer on, clear touch buffer, touch scanning on
	0x0d, 0x0d, 0x0d, 0x0d, 0x0d, 0x3c, 0x2b, 0x44, 0x26, 0x44, 0x3d, 0x2a
}; // initial touch config codes, tracking
const uint8_t elocodes_s_e[] = {// same as above ex (0x25) enter point mode
	0x0d, 0x0d, 0x0d, 0x0d, 0x0d, 0x3c, 0x2b, 0x44, 0x25, 0x44, 0x3d, 0x2a
}; // initial touch config codes, single


// SmartSet codes 0 command, 1 status, 2 low byte, 3 high byte, etc ...
const uint8_t elocodes_e0[] = {
	'U', 'B', 0x03, 0x8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 // smartset timing and spacing setup
};
const uint8_t elocodes_e1[] = {
	'U', 'E', '1', '4', 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};
const uint8_t elocodes_e2[] = {
	'U', 'N', '1', '7', 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};
const uint8_t elocodes_e3[] = {
	'U', 'R', '2', 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 // reset nvram and reboot
};
const uint8_t elocodes_e4[] = {
	'U', 'S', 'Y', 0x01, 0x00, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};
const uint8_t elocodes_e5[] = {
	'U', 'i', 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};
const uint8_t elocodes_e6[] = {
	'U', 'g', 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};
const uint8_t elocodes_e7[] = {// dummy packet
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint16_t touch_corner1 = 0;
bool touch_corner_timed = false;

uint8_t idx = 0;
volatile uint16_t tickCount[TMR_COUNT];
char buffer[256];

void putc1(uint8_t);
void putc2(uint8_t);
void rxtx_handler(void);
void led_flash(void);

void touch_cam(void)
{
	//	check for corner presses
	if (S.CATCH) {
		if ((elobuf[0] <= (uint8_t) 0x06) && (elobuf[1] >= (uint8_t) 0x5a)) { // check for left bottom corner
			touch_corner1++;
			touch_corner_timed = true;
		};

		if ((elobuf[0] >= (uint8_t) 0x72) && (elobuf[1] >= (uint8_t) 0x5a)) { // check for right bottom corner
			touch_corner1++;
		};
	};


	if (touch_corner1 >= MAX_CAM_TOUCH) { // we have several corner presses 
		S.CAM = true;
		status.cam_time = 0;
		touch_corner1 = 0;
		CAM_RELAY_AUX = 1; // set secondary VGA/CAM switch
		CAM_RELAY = 1; // set primary VGA/CAM switch
		elobuf[0] = 1;
		elobuf[1] = 1;
	};
}

void elocmdout(uint8_t * elostr)
{
	putc2(elostr[0]);

	BLED_Toggle(); // flash external led
	wdtdelay(30000);
}

void eloSScmdout(uint8_t elostr)
{
	putc2(elostr);

	BLED_Toggle(); // flash external led
	wdtdelay(10000); // inter char delay
}

void elopacketout(const uint8_t *strptr, uint8_t strcount, bool slow)
{
	uint8_t i, c, sum = 0;

	for (i = 0; i < strcount; i++) {
		switch (i) {
		case 0:
			c = 'U';
			sum = 0xAA + 'U';
			break;
		case 9:
			c = sum;
			break;
		default:
			c = strptr[i];
			sum += c;
			break;
		}
		eloSScmdout(c);
	};
	if (slow) {
		wdtdelay(30000);
	}
}

void elocmdout_v80(const uint8_t * elostr)
{
	int16_t e;
	uint8_t elo_char;
	for (e = 0; e < ELO_SIZE_V80; e++) { // send buffered data
		elo_char = elostr[e];
		putc2(elo_char); // send to LCD touch
		BLED_Toggle(); // flash external led
		wdtdelay(10000); // inter char delay
	}
	wdtdelay(50000); // wait for LCD controller reset
}

void setup_lcd_smartset(void)
{
	elopacketout(elocodes_e3, ELO_SEQ, 0); // reset to default smartset
	wdtdelay(700000); // wait for LCD touch controller reset
	elopacketout(elocodes_e0, ELO_SEQ, 0); // set touch packet spacing and timing
	elopacketout(elocodes_e2, ELO_SEQ, 0); // nvram save

}

void putc1(uint8_t c)
{
	while (!UART1_is_tx_ready()) {
	}; // wait until the usart is clear
	UART1_Write(c);
}

void putc2(uint8_t c)
{
	return;
}

void start_delay(void)
{
	wdtdelay(100000);
}

/*
 * main program loop processing
 */
void rxtx_handler(void) // timer & serial data transform functions are handled here
{
	static uint8_t c = 0, i = 0, data_pos, uchar, tchar;
	uint16_t x_tmp, y_tmp, uvalx, lvalx, uvaly, lvaly;
	static uint8_t sum = 0xAA + 'U';
	static uint32_t ticks = 0;

	status.rawint_count++;
	if (emulat_type != OTHER_MECH) {
		if (UART1_DataReady) { // is data from host COMM1, only from E220/E500 machines

			if (status.do_cap) {
			} else {
				tchar = UART1_Read(); // read from host
				S.DATA1 = true; // usart is connected to data
				S.LCD_OK = true; // looks like a screen controller is connected
				S.TSTATUS = true;
				if (tchar == 0x46) { // send one report to host
					S.CATCH46 = true;
					status.touch_good = 0;
				}
				if (tchar == 0x37) { // start of touch scan read
					S.CATCH37 = true;
					status.touch_good = 0;
				}
				if (tchar == 0x3C) { // touch reset from host
					// a possible setup command
				}
			};
		}
	}

	if (TimerDone(TMR_DIS)) {
		sprintf(buffer, "%lu,%u    ", vcounts, vfcounts);
		eaDogM_WriteStringAtPos(3, 0, buffer);
		sprintf(buffer, "%i,%i,%i %i ", idx, S.DATA1, S.DATA2, status.lcd_count);
		eaDogM_WriteStringAtPos(0, 0, buffer);
		StartTimer(TMR_DIS, 500);
	}
}

uint8_t Test_Screen(void)
{
	putc2(0x46);
	wdtdelay(30000);
	setup_lcd_smartset(); // send lcd touch controller setup codes
	return S.DATA2;
}

/*
			 Main application
 */
void main(void)
{
	uint8_t scaled_char;
	float rez_scale_h = 1.0, rez_parm_h, rez_scale_v = 1.0, rez_parm_v;
	float rez_scale_h_ss = ELO_SS_H_SCALE, rez_scale_v_ss = ELO_SS_V_SCALE;

	// Initialize the device
	SYSTEM_Initialize();
	TMR5_SetInterruptHandler(led_flash);
	ntsc_init();

	S.c_idx = 0;
	S.speedup = 0;

	// default interfaces
	/*
	 * host expects
	 */
	if (S_TYPE_GetValue()) { // SV4 pin 5
		S.ts_type = OEM_CRT;
	} else {
		S.ts_type = OEM_LCD;
	}

	/*
	 * host is
	 */
	if (E_TYPE_GetValue()) { // SV4 pin 3
		emulat_type = E220;
	} else {
		emulat_type = VIISION;
	}

	/*
	 * touch screen is
	 */
	if (D_TYPE_GetValue()) { // SV4 pin 1
		screen_type = DELL_E215546;
	} else {
		screen_type = OTHER_SCREEN;
		emulat_type = OTHER_MECH;
	}

	CAM_RELAY = 0;
	CAM_RELAY_AUX = 0;
	status.touch_count = 0;
	S.CAM = false;
	ssreport.tohost = true;

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

	StartTimer(TMR_DIS, 500);

	if (emulat_type == OTHER_MECH) {
	}

	if (emulat_type == VIISION) {
		elocmdout_v80(&elocodes[7][0]); // reset;
		wdtdelay(700000); // wait for LCD touch controller reset
		/* program the display */
		elocmdout_v80(&elocodes[0][0]);
		elocmdout_v80(&elocodes[4][0]);
		elocmdout_v80(&elocodes[5][0]);
		elocmdout_v80(&elocodes[6][0]);
	}

	if (emulat_type == E220) {
		S.DATA1 = false; // reset COMM flags.
		S.DATA2 = false; // reset touch COMM flag

		setup_lcd_smartset();
		/* Loop forever */
		StartTimer(TMR_CAM, 1000);
		while (true) {
			rxtx_handler();
			if (j++ >= (BLINK_RATE_E220 + S.speedup)) { // delay a bit ok
#ifdef	DEBUG_CAM
				CAM_RELAY = !CAM_RELAY;
#endif
				BLED_Toggle(); // flash external led
				if (status.cam_time > MAX_CAM_TIMEOUT) {
					if (touch_corner_timed) {
						touch_corner_timed = false;
						CAM_RELAY_AUX = 0; // clear video switch
						CAM_RELAY = 0; // clear video switch
						S.CAM = false;
					}
				}
				if (TimerDone(TMR_CAM)) {
					status.cam_time++;
					StartTimer(TMR_CAM, 1000);
				}

				/*		For the auto-restart switch						*/
				//FIXME
				if (AUTO_RESTART == true) { // enable auto-restarts
					if ((status.restart_delay++ >= (uint16_t) 60) && (!S.TSTATUS)) { // try and reinit lcd after delay
						start_delay();
						setup_lcd_smartset(); // send lcd touch controller setup codes
						start_delay();
						while (true) {
						}; // lockup WDT counter to restart
					} else {
						if ((status.restart_delay >= (uint16_t) 150) && (S.TSTATUS)) { // after delay restart TS status.
							S.TSTATUS = false; // lost comms while connected
							status.restart_delay = 0;
						};
					};
				}
				j = 0;
			}


			touch_cam(); // always check the cam touch

			if (S.CATCH46) { // flag to send report to host
				if (S.CATCH) { // send the buffered touch report
					DEBUG1_Toggle();
					putc1(0xFE); // send position report header to host
					if (screen_type == DELL_E215546) {
						ssreport.tohost = true; // ISR flag
						rez_parm_h = ((float) (ssreport.x_cord)) * rez_scale_h_ss;
						rez_parm_v = ((float) (ssreport.y_cord)) * rez_scale_v_ss;
						ssreport.tohost = false;
						scaled_char = ((uint8_t) (rez_parm_h));
						elobuf[0] = scaled_char;
						putc1(scaled_char); // send h scaled touch coord
						scaled_char = ((uint8_t) (rez_parm_v));
						elobuf[1] = scaled_char;
						putc1(scaled_char); // send v scaled touch coord
					} else {
						rez_parm_h = ((float) (elobuf[0])) * rez_scale_h;
						scaled_char = ((uint8_t) (rez_parm_h));
						putc1(scaled_char); // send h scaled touch coord
						rez_parm_v = ((float) (elobuf[1])) * rez_scale_v;
						scaled_char = ((uint8_t) (rez_parm_v));
						putc1(scaled_char); // send v scaled touch coord
						S.c_idx = 0;
					}
					putc1(0xFF); // send end of report to host
					status.touch_count++;
					S.CATCH = false;
					S.CATCH46 = false;
				} else { // just send status
					putc1(0xF5); // send status report
					putc1(0xFF); // end of report
					status.status_count++;
					S.CATCH46 = false;
				};
			};

			if (S.CATCH37) { // send screen size codes
				rez_scale_h = 1.0; // LCD touch screen real H/V rez
				rez_scale_v = 1.0;
				if (!(screen_type == DELL_E215546)) {
					putc2(0x3D); // send clear buffer to touch
				}

				putc1(0xF4); // send status report
				if (S.ts_type == OEM_CRT) { // CRT type screens
					putc1(0x77); // touch parm
					putc1(0x5f); // touch parm
				}
				if (S.ts_type == OEM_LCD) { // new LCD type screens
					putc1(0x71); // touch parm 113
					putc1(0x59); // touch parm 89
				}
				putc1(0xFF); // end of report
				status.resync_count++;
				S.CATCH37 = false;
			};

			if (S.TOUCH) {
				// do nothing now.
			};

			ClrWdt(); // reset the WDT timer
		}
	}

	if (emulat_type == VIISION) {
		/* Loop forever */
		while (true) { // busy loop BSG style
			rxtx_handler();
			if (j++ >= BLINK_RATE_V80) { // delay a bit ok
				BLED_Toggle(); // flash external led
				if (S.LCD_OK) { // screen status feedback
				} else {
				}
				j = 0;
			}

			ClrWdt(); // reset the WDT timer
		}
	}

	if (emulat_type == OTHER_MECH) {
		/* Loop forever */
		while (true) { // busy loop BSG style
			rxtx_handler();
			if (j++ >= BLINK_RATE_OTHER) { // delay a bit ok
				BLED_Toggle(); // flash external led
				j = 0;
			}
			ClrWdt(); // reset the WDT timer
		}
	}

	while (true) {
		// Add your application code
		rxtx_handler();
	}
}

/*
 * This runs in the timer5 ISR
 */
void led_flash(void)
{
	LED2_Toggle();
}
/**
 End of File
 */