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

#define LCD_CMD_MASK	0x01
#define LCD_CMD_SET		0x100
#define LCD_CLEAR_HOME	0x04

	extern void wdtdelay(uint32_t);

	void init_display(void);
	void send_lcd_data(uint8_t);
	void send_lcd_cmd(uint8_t);
	void start_lcd(void);
	void wait_lcd(void);

	void eaDogM_WriteChr(int8_t);
	void eaDogM_WriteCommand(uint8_t);
	void eaDogM_SetPos(uint8_t, uint8_t);
	void eaDogM_ClearRow(uint8_t);
	void eaDogM_WriteString(int8_t *);
	void eaDogM_WriteStringAtPos(uint8_t, uint8_t, int8_t *);
	void eaDogM_WriteIntAtPos(uint8_t, uint8_t, uint8_t);
	void eaDogM_WriteByteToCGRAM(uint8_t, uint8_t);

#ifdef	__cplusplus
}
#endif

#endif	/* EADOG_H */

