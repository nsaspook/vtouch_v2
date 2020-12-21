/*
 * File:   eadog.h
 * Author: root
 *
 * Created on July 27, 2015, 2:05 PM
 */

/* Parts taken from:
 * Modified for C18 and PIC18F45K80 with SPI using ring buffers with interrupts
 *
 *            file: EA-DOGM_MIO.c
 *         version: 2.03
 *     description: Multi I/O driver for EA DOGM displays
 *                : Uses 8Bit, SPI HW or SPI SW (bitbang)
 *     written by : Michael Bradley (mbradley@mculabs.com)
 *   contributions: Imaginos (CCS forum), Emil Nad (8Bit testing)
 *                  jgschmidt (CCS forum)
 */

#ifndef EADOG_H
#define	EADOG_H

#ifdef	__cplusplus
extern "C" {
#endif
#include "qconfig.h"
#include "ringbufs.h"

extern struct V_data V;

#define LCD_CMD_MASK	0x01
#define LCD_CMD_SET	0x100
#define LCD_CLEAR_HOME	0x04
#define NHD_CMD		0xFE
#define NHD_BL_OFF	1
#define NHD_BL_LOW	2
#define NHD_BL_MED	5
#define NHD_BL_HIGH	8

	void wdtdelay(uint32_t);
	void init_display(void);
	void init_port_dma(void);
	void send_port_data_dma(uint16_t);
	uint8_t* port_data_dma_ptr(void);
	void send_lcd_data_dma(uint8_t);
	void send_lcd_cmd_dma(uint8_t);
	void start_lcd(void);
	void wait_lcd_set(void);
	bool wait_lcd_check(void);
	void wait_lcd_done(void);
	void eaDogM_WriteChr(int8_t);
	void eaDogM_WriteCommand(uint8_t);
	void eaDogM_SetPos(uint8_t, uint8_t);
	void eaDogM_ClearRow(uint8_t);
	void eaDogM_WriteString(char *);
	void eaDogM_WriteStringAtPos(uint8_t, uint8_t, char *);
	void eaDogM_WriteIntAtPos(uint8_t, uint8_t, uint8_t);
	void eaDogM_WriteByteToCGRAM(uint8_t, uint8_t);
	
	// DMA complete flag
	void clear_lcd_done(void);
	void spi_rec_done(void);

#define eaDogM_Cls()             eaDogM_WriteCommand(EADOGM_CMD_CLR)
#define eaDogM_CursorOn()        eaDogM_WriteCommand(EADOGM_CMD_CURSOR_ON)
#define eaDogM_CursorOff()       eaDogM_WriteCommand(EADOGM_CMD_CURSOR_OFF)
#define eaDogM_DisplayOn()       eaDogM_WriteCommand(EADOGM_CMD_DISPLAY_ON)
#define eaDogM_DisplayOff()      eaDogM_WriteCommand(EADOGM_CMD_DISPLAY_OFF)

#ifdef	__cplusplus
}
#endif

#endif	/* EADOG_H */

