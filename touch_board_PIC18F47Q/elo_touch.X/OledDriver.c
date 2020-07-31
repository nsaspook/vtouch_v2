/************************************************************************/
/*										*/
/*	OledDriver.c	-- Graphics Driver Library for OLED Display		*/
/*										*/
/************************************************************************/
/*	Author: 	Gene Apperson						*/
/*	Copyright 2011, Digilent Inc.						*/
/************************************************************************/
/*
  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */
/************************************************************************/
/*  Module Description: 							*/
/*										*/
/*	This is part of the device driver software for the OLED bit mapped	*/
/*	display on the Digilent Basic I/O Shield. This module contains the	*/
/*	initialization functions and basic display control functions.		*/
/*										*/
/************************************************************************/
/*  Revision History:								*/
/*										*/
/*	04/29/2011(GeneA): Created						*/
/*	08/03/2011(GeneA): added functions to shut down the display and to	*/
/*		turn the display on and off.					*/
/*	01/04/2012(GeneA): Changed use of DelayMs to using standard delay	*/
/*		function. Removed delay.h					*/
/*	05/11/2017(FGB): convert XC32 and Harmony 2.0				*/
/*										*/
/************************************************************************/


/* ------------------------------------------------------------ */
/*				Include File Definitions	*/
/* ------------------------------------------------------------ */

#include "OledDriver.h"
#include "OledChar.h"
#include "OledGrph.h"
#include "mcc_generated_files/pin_manager.h"
#include "mcc_generated_files/spi1.h"
#include "dogm-graphic.h"
#include "mcc_generated_files/pwm8.h"

/* ------------------------------------------------------------ */
/*				Local Symbol Definitions						*/

/* ------------------------------------------------------------ */

enum {
	cmdOledDisplayOn = 0xAF,
	cmdOledDisplayOff = 0xAE,
	cmdOledSegRemap = 0xA1, //map column 127 to SEG0
	cmdOledComDir = 0xC8, //scan from COM[N-1] to COM0
	cmdOledComConfig = 0xDA, //set COM hardware configuration
	cmdOledComSeqLR = 0x20 //sequential COM, left/right remap enabled
};

enum {
	d_seq_single_width = 1, d_seq_one_width = 4, d_seq_two_width = 5
}; // command byte-width sizes

struct oled_init_data {
	uint32_t init_delay_msecs;
	uint8_t d_off[d_seq_single_width];
	uint8_t d_on[d_seq_single_width];
	uint8_t d_charge_setup[d_seq_one_width];
	uint8_t d_origin_memory[d_seq_two_width];
};

static const struct oled_init_data oled_ssd1306 = {
	.init_delay_msecs = 100,
	.d_off =
	{cmdOledDisplayOff},
	.d_on =
	{cmdOledDisplayOn},
	.d_charge_setup =
	{0x8D, 0x14, 0xD9, 0xF1}, //Send the Set Charge Pump and Set Pre-Charge Period commands
	.d_origin_memory =
	{cmdOledSegRemap, cmdOledComDir, cmdOledComConfig, cmdOledComSeqLR, cmdOledDisplayOn},
};

const struct oled_init_data *oled_ptr = &oled_ssd1306;

/* ------------------------------------------------------------ */
/*				Global Variables								*/
/* ------------------------------------------------------------ */

volatile uint8_t LCD_DATA = 0;

extern uint8_t rgbOledFont0[];
extern uint8_t rgbOledFontUser[];
extern uint8_t rgbFillPat[];

extern int32_t xchOledMax;
extern int32_t ychOledMax;

/* Coordinates of current pixel location on the display. The origin
 ** is at the upper left of the display. X increases to the right
 ** and y increases going down.
 */
int32_t xcoOledCur;
int32_t ycoOledCur;

uint8_t * pbOledCur; //address of byte corresponding to current location
int32_t bnOledCur; //bit number of bit corresponding to current location
uint8_t clrOledCur; //drawing color to use
uint8_t * pbOledPatCur; //current fill pattern
int32_t fOledCharUpdate;

int32_t dxcoOledFontCur;
int32_t dycoOledFontCur;

uint8_t * pbOledFontCur;
uint8_t * pbOledFontUser;

/* ------------------------------------------------------------ */
/*				Local Variables									*/
/* ------------------------------------------------------------ */

/* This array is the offscreen frame buffer used for rendering.
 ** It isn't possible to read back frome the OLED display device,
 ** so display data is rendered into this offscreen buffer and then
 ** copied to the display.
 */
uint8_t rgbOledBmp[cbOledDispMax];

/* ------------------------------------------------------------ */
/*				Forward Declarations							*/
/* ------------------------------------------------------------ */

void OledHostInit(void);
void OledHostTerm(void);
void OledDevInit(void);
void OledDevTerm(void);
void OledDvrInit(void);
void OledPutBuffer(int32_t cb, uint8_t * rgbTx);

uint16_t SPI1_to_Buffer(uint8_t *, uint16_t, uint8_t *);

/* ------------------------------------------------------------ */
/*				Procedure Definitions							*/
/* ------------------------------------------------------------ */

/***	OledInit
 **
 **	Parameters:
 **		none
 **
 **	Return Value:
 **		none
 **
 **	Errors:
 **		none
 **
 **	Description:
 **		Initialize the OLED display subsystem.
 */

void OledInit(void)
{
	/* Init the PIC32 peripherals used to talk to the display.
	 */
	OledHostInit();

	/* Init the memory variables used to control access to the
	 ** display.
	 */
	OledDvrInit();

	/* Init the OLED display hardware.
	 */
	OledDevInit();

	/*
	 * init DMA
	 */
#ifdef USE_DMA
	/*
	 * set RX for DMA mode
	 */
	//	SPI1CON0bits.EN = 0;
	//	SPI1CON2 = 0x02; //  Received data is not stored in the FIFO
	//	SPI1CON0bits.EN = 1;
	SPI1INTFbits.SPI1TXUIF = 0;

	DMA1SSA = (volatile uint24_t) & rgbOledBmp; //set source start address
	DMA1DSA = (volatile unsigned short) &SPI1TXB; //set destination start address
	DMA1CON1bits.DMODE = 0;
	DMA1CON1bits.DSTP = 0;
	DMA1CON1bits.SMODE = 1;
	DMA1CON1bits.SMR = 0;
	DMA1CON1bits.SSTP = 1;
	DMA1SIRQ = 0x15; //set DMA Transfer Trigger Source
	DMA1AIRQ = 0x00; //set DMA Transfer abort Source 
	DMA1CON0bits.DMA1SIRQEN = 0;

#endif

	/* Clear the display.
	 */
	OledClear();

}

/* ------------------------------------------------------------ */

/***	OledTerm
 **
 **	Parameters:
 **		none
 **
 **	Return Value:
 **		none
 **
 **	Errors:
 **		none
 **
 **	Description:
 **		Shut down the OLED display.
 */

void OledTerm(void)
{

	/* Shut down the OLED display hardware.
	 */
	OledDevTerm();

	/* Release the PIC32 peripherals being used.
	 */
	OledHostTerm();

}

/* ------------------------------------------------------------ */

/***	OledHostInit
 **
 **	Parameters:
 **		none
 **
 **	Return Value:
 **		none
 **
 **	Errors:
 **		none
 **
 **	Description:
 **		Perform PIC32 device initialization to prepare for use
 **		of the OLED display.
 */

void OledHostInit(void)
{
	/*
	 * dogm does the init
	 */
}

/* ------------------------------------------------------------ */

/***	OledHostTerm
 **
 **	Parameters:
 **		none
 **
 **	Return Value:
 **		none
 **
 **	Errors:
 **		none
 **
 **	Description:
 **		Release processor resources used by the library
 */

void OledHostTerm(void)
{
	// does nothing, the display and SPI port remains active
}

/* ------------------------------------------------------------ */

/***	OledDvrInit
 **
 **	Parameters:
 **		none
 **
 **	Return Value:
 **		none
 **
 **	Errors:
 **		none
 **
 **	Description:
 **		Initialize the OLED software system
 */

void OledDvrInit(void)
{
	int32_t ib;

	/* Init the parameters for the default font
	 */
	dxcoOledFontCur = cbOledChar;
	dycoOledFontCur = 8;
	pbOledFontCur = rgbOledFont0;
	pbOledFontUser = rgbOledFontUser;

	for (ib = 0; ib < cbOledFontUser; ib++) {
		rgbOledFontUser[ib] = 0;
	}

	xchOledMax = ccolOledMax / dxcoOledFontCur;
	ychOledMax = crowOledMax / dycoOledFontCur;

	/* Set the default character cursor position.
	 */
	OledSetCursor(0, 0);

	/* Set the default foreground draw color and fill pattern
	 */
	clrOledCur = 0x01;
	pbOledPatCur = rgbFillPat;
	OledSetDrawMode(modOledSet);

	/* Default the character routines to automatic
	 ** update the display.
	 */
	fOledCharUpdate = 1;

}

/* ------------------------------------------------------------ */

/***	OledDevInit
 **
 **	Parameters:
 **		none
 **
 **	Return Value:
 **		none
 **
 **	Errors:
 **		none
 **
 **	Description:
 **		Initialize the OLED display controller and turn the display on.
 */


void OledDevInit(void)
{
	/*
	 * handled by dogm-graphics
	 */
}

/* ------------------------------------------------------------ */

/***	OledDevTerm
 **
 **	Parameters:
 **		none
 **
 **	Return Value:
 **		none
 **
 **	Errors:
 **		none
 **
 **	Description:
 **		Shut down the OLED display hardware
 */

void OledDevTerm(void)
{
	/* Send the Display Off command.
	 * does nothing
	 */

}

/* ------------------------------------------------------------ */

/***	OledDisplayOn
 **
 **	Parameters:
 **		none
 **
 **	Return Value:
 **		none
 **
 **	Errors:
 **		none
 **
 **	Description:
 **		Turn the display on. This assumes that the display has
 **		already been powered on and initialized. All it does
 **		is send the display on command.
 */

void OledDisplayOn(void)
{
	/*
	 * does nothing
	 */
}

/* ------------------------------------------------------------ */

/***	OledDisplayOff
 **
 **	Parameters:
 **		none
 **
 **	Return Value:
 **		none
 **
 **	Errors:
 **		none
 **
 **	Description:
 **		Turn the display off. This does not power the display
 **		down. All it does is send the display off command.
 */

void OledDisplayOff(void)
{
	/*
	 * does nothing
	 */
}

/* ------------------------------------------------------------ */

/***	OledClear
 **
 **	Parameters:
 **		none
 **
 **	Return Value:
 **		none
 **
 **	Errors:
 **		none
 **
 **	Description:
 **		Clear the display. This clears the memory buffer and then
 **		updates the display.
 */

void OledClear(void)
{
	OledClearBuffer();
	OledUpdate();
}

/* ------------------------------------------------------------ */

/***	OledClearBuffer
 **
 **	Parameters:
 **		none
 **
 **	Return Value:
 **		none
 **
 **	Errors:
 **		none
 **
 **	Description:
 **		Clear the display memory buffer.
 */

void OledClearBuffer(void)
{
	int32_t ib;
	uint8_t * pb;

	pb = rgbOledBmp;

	/* Fill the memory buffer with 0.
	 */
	for (ib = 0; ib < cbOledDispMax; ib++) {
		*pb++ = 0x00;
	}

}

/* ------------------------------------------------------------ */

/***	OledUpdate
 **
 **	Parameters:
 **		none
 **
 **	Return Value:
 **		none
 **
 **	Errors:
 **		none
 **
 **	Description:
 **		Update the OLED display with the contents of the memory buffer
 */

void OledUpdate(void)
{
	int32_t ipag;
	uint8_t* pb;
	uint8_t TXbuffer[] = {0x22, 0x00, 0x00, 0x10};

	pb = rgbOledBmp;

	for (ipag = 0; ipag < cpagOledMax; ipag++) {
		/* Set the page address
		 */
		//Set page command
		//page number
		/* Start at the left column
		 */
		//set low nibble of column
		//set high nibble of column
		//		TXbuffer[1] = ipag;
		lcd_moveto_xy(ipag, 0);
		//		DRV_SPI_BufferAddWrite(SPIHandle, (uint8_t *) TXbuffer, sizeof(TXbuffer), 0, 0);
		//		
		//		prtDataCmd = 1;
		/* Copy this memory page of display data.
		 */
		OledPutBuffer(ccolOledMax, pb);
		pb += ccolOledMax;
	}
}

/* ------------------------------------------------------------ */

/***	OledPutBuffer
 **
 **	Parameters:
 **		cb		- number of bytes to send
 **		rgbTx	- pointer to the buffer to send
 **
 **	Return Value:
 **		none
 **
 **	Errors:
 **		none
 **
 **	Description:
 **		Send the bytes specified in rgbTx to the slave OLED
 */


void OledPutBuffer(int32_t cb, uint8_t * rgbTx)
{
	SPI1_to_Buffer(rgbTx, cb, NULL);
}

uint16_t SPI1_to_Buffer(uint8_t *dataIn, uint16_t bufLen, uint8_t *dataOut)
{
	uint16_t bytesWritten = 0, i = 0;

#ifdef USE_DMA
	while (DMA1CON0bits.DMA1SIRQEN) {
		//			if (++i > 2000) {
		//				break;
		//			}
	};
	PWM8_LoadDutyValue(199);
	SPI1CON0bits.EN = 0;
	SPI1CON2 = 0x02; //  Received data is not stored in the FIFO
	SPI1CON0bits.EN = 1;
	DMA1CON0bits.EN = 0; /* disable DMA to change source count */
	DMA1SSA = (volatile uint24_t) dataIn;
	DMA1SSZ = bufLen;
	DMA1DSA = (volatile unsigned short) &SPI1TXB; //set destination start address
	DMA1DSZ = 1;
	DMA1CON1bits.DMODE = 0;
	DMA1CON1bits.DSTP = 0;
	DMA1CON1bits.SMODE = 1;
	DMA1CON1bits.SMR = 0;
	DMA1CON1bits.SSTP = 1;
	DMA1SIRQ = 0x15; //set DMA Transfer Trigger Source
	DMA1AIRQ = 0x00; //set DMA Transfer abort Source 
	PIR2bits.DMA1DCNTIF = 0; //clear Destination Count Interrupt Flag bit
	PIR2bits.DMA1SCNTIF = 0; //clear Source Count Interrupt Flag bit
	PIR2bits.DMA1AIF = 0; //clear abort Interrupt Flag bit
	PIR2bits.DMA1ORIF = 0; //clear overrun Interrupt Flag bit
	SPI1INTFbits.SPI1TXUIF = 1;
	DMA1CON0 = 0x80; //EN = 1 | SIRQEN = 0 | DGO = 0 |xx| AIRQEN = 0 |x| XIP = 0
	DMA1CON0bits.DMA1SIRQEN = 1; /* start DMA trigger */
	PWM8_LoadDutyValue(1);
	return bufLen;
#else
	while (!SPI1STATUSbits.TXBE);
	LCD_SELECT();
	LCD_DRAM();

	if (bufLen != 0) {
		if (dataIn != NULL) {
			while (bytesWritten < bufLen) {
				if (dataOut == NULL) {
					SPI1_Exchange8bit(dataIn[bytesWritten]);
				} else {
					SPI1_Exchange8bit(dataIn[bytesWritten]);
				}
				lcd_inc_column(1);
				bytesWritten++;
			}
		} else {
			if (dataOut != NULL) {
				while (bytesWritten < bufLen) {
					SPI1_Exchange8bit(DUMMY_DATA);
					lcd_inc_column(1);
					bytesWritten++;
				}
			}
		}
	}

	LCD_UNSELECT();
	return bytesWritten;
#endif
}

void wait_lcd_done(void)
{
#ifdef USE_DMA
	while (LCD_DATA);
#endif
	while (!SPI1STATUSbits.TXBE);
}