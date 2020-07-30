/************************************************************************/
/*																		*/
/*	OledGrph.h	--	Declarations for OLED Graphics Routines				*/
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
/*	Interface declarations for OledGrph.c								*/
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/*																		*/
/*	06/03/2011(GeneA): created											*/
/*																		*/
/************************************************************************/

#if !defined(OLEDGRPH_H)
#define	OLEDGRPH_H

/* ------------------------------------------------------------ */
/*					Miscellaneous Declarations					*/
/* ------------------------------------------------------------ */



/* ------------------------------------------------------------ */
/*					General Type Declarations					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*					Object Class Declarations					*/
/* ------------------------------------------------------------ */



/* ------------------------------------------------------------ */
/*					Variable Declarations						*/
/* ------------------------------------------------------------ */



/* ------------------------------------------------------------ */
/*					Procedure Declarations						*/
/* ------------------------------------------------------------ */

void OledSetDrawColor(uint8_t clr);
void OledSetDrawMode(int32_t mod);
int32_t OledGetDrawMode();
uint8_t * OledGetStdPattern(int32_t ipat);
void OledSetFillPattern(uint8_t * pbPat);

void OledMoveTo(int32_t xco, int32_t yco);
void OledGetPos(int32_t * pxco, int32_t * pyco);
void OledDrawPixel();
uint8_t OledGetPixel();
void OledLineTo(int32_t xco, int32_t yco);
void OledDrawRect(int32_t xco, int32_t yco);
void OledFillRect(int32_t xco, int32_t yco);
void OledGetBmp(int32_t dxco, int32_t dyco, uint8_t * pbBmp);
void OledPutBmp(int32_t dxco, int32_t dyco, uint8_t * pbBmp);
void OledDrawChar(char ch);
void OledDrawString(char * sz);

/* ------------------------------------------------------------ */

#endif

/************************************************************************/
