/************************************************************************/
/*																		*/
/*	OledDriver.h -- Interface Declarations for OLED Display Driver 		*/
/*																		*/
/************************************************************************/
/*	Author:		Gene Apperson											*/
/*	Copyright 2011, Digilent Inc.										*/
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
/*  File Description:													*/
/*																		*/
/*	Interface to OledDriver.c											*/
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/*																		*/
/*	04/29/2011(GeneA): created											*/
/*																		*/
/************************************************************************/
#include <stdint.h>

#if !defined(OLEDDRIVER_INC)
#define	OLEDDRIVER_INC

/* ------------------------------------------------------------ */
/*					Miscellaneous Declarations					*/
/* ------------------------------------------------------------ */

#define	cbOledDispMax		512		//max number of bytes in display buffer

#define	ccolOledMax		102		//number of display columns
#define	crowOledMax		64		//number of display rows
#define	cpagOledMax		8		//number of display memory pages

#define	cbOledChar		8		//font glyph definitions is 8 bytes long
#define	chOledUserMax		0x20	//number of character defs in user font table
#define	cbOledFontUser		(chOledUserMax*cbOledChar)

/* Graphics drawing modes.
 */
#define	modOledSet		0
#define	modOledOr		1
#define	modOledAnd		2
#define	modOledXor		3

/* ------------------------------------------------------------ */
/*					General Type Declarations					*/
/* ------------------------------------------------------------ */

/* Pin definitions for access to OLED control signals on ChipKitUno
 */


/* ------------------------------------------------------------ */
/*					Object Class Declarations					*/
/* ------------------------------------------------------------ */



/* ------------------------------------------------------------ */
/*					Variable Declarations						*/
/* ------------------------------------------------------------ */



/* ------------------------------------------------------------ */
/*					Procedure Declarations						*/
/* ------------------------------------------------------------ */

void OledInit();
void OledTerm();
void OledDisplayOn();
void OledDisplayOff();
void OledClear();
void OledClearBuffer();
void OledUpdate();
void BSP_DelayUs(uint32_t);
void DelayMs(uint32_t);

/* ------------------------------------------------------------ */

#endif

/************************************************************************/
