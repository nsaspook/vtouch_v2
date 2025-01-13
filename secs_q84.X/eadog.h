/*
 * File:   eadog.h
 * Author: root
 *
 * Created on July 27, 2015, 2:05 PM
 */

/* Parts taken from:
 * Modified for XC8 and with SPI using ring buffers with interrupts
 *
 *            file: EA-DOGM_MIO.c
 *         version: 2.03
 *     description: Multi I/O driver for EA DOGM displays
 *                : Uses 8Bit, SPI HW or SPI SW (bitbang)
 *     written by : Michael Bradley (mbradley@mculabs.com)
 *   contributions: Imaginos (CCS forum), Emil Nad (8Bit testing)
 *                  jgschmidt (CCS forum)
 * 
Pin No. Symbol External Connection Function Description
1 SPISS MPU SPI Slave Select (NC in I2C mode)
2 SDO NC No Connect
3 SCK/SCL MPU Serial Clock
4 SDI/SDA MPU Serial Data In (SPI) / Serial Data (I2C)
5 VSS Power Supply Ground
6 VDD Power Supply Power Supply for logic (+5.0V
 * 
R1 R2 Protocol Description
Short Short TEST Self-test
Open Short SPI 100KHz max clock
Short Open I2C 50KHz max clock
Open Open RS-232 5V, TTL signal
 */

#ifndef EADOG_H
#define	EADOG_H

#ifdef	__cplusplus
extern "C" {
#endif
#include "vconfig.h"

#define USEMCC_SPI
#ifndef CAN_REMOTE_NODMA
#define USE_LCD_DMA
#endif

	typedef struct {
		uint8_t con0;
		uint8_t con1;
		uint8_t con2;
		uint8_t baud;
		uint8_t operation;
	} spi1_configuration_t;

#define EADOGM_CMD_CLR          1
#define EADOGM_CMD_CURSOR_ON	0b00001111
#define EADOGM_CMD_CURSOR_OFF   0b00001100
#define EADOGM_CMD_DISPLAY_ON   0b00001100
#define EADOGM_CMD_DISPLAY_OFF  0b00001000
#define EADOGM_CMD_DDRAM_ADDR   0b10000000
#define EADOGM_CMD_CGRAM_ADDR   0b01000000
#define EADOGM_CMD_SELECT_R0    0b00011000
#define EADOGM_CMD_SELECT_R1    0b00010000
#define EADOGM_CMD_SET_TABLE2   0b00101010
#define EADOGM_COLSPAN          16

#define LCD_CMD_MASK	0x01
#define LCD_CMD_SET	0x100
#define LCD_CLEAR_HOME	0x04
#define LCD_CMD_ON	0x41
#define LCD_CMD_OFF	0x42
#define LCD_CMD_HOME	0x46
#define LCD_CMD_CLR	0x51
#define LCD_CMD_CONT	0x52
#define LCD_CMD_BRI	0x53
#define NHD_CMD		0xFE
#define NHD_POS		0x45
#define NHD_BL_OFF	1
#define NHD_BL_LOW	2
#define NHD_BL_MED	5
#define NHD_BL_HIGH	8
#define NHD_CONT	35

#define NHD_T_DELAY	8
#define NHD_S_DELAY	200
#define NHD_L_DELAY	800

#define LCD0		0
#define LCD1		1
#define LCD2		2
#define LCD3		3

#define DIM_DELAY	6

#define NSB		5
#define LSB		21

#define LCD_PWR_DELAY	350000

	extern void wdtdelay(const uint32_t);
	bool init_display(void);
	void no_dma_set_lcd(void);
	void send_lcd_data_dma(const uint8_t);
	void send_lcd_cmd_dma(const uint8_t);
	void send_lcd_pos_dma(const uint8_t);
	void start_lcd(void);
	void wait_lcd_set(void);
	bool wait_lcd_check(void);
	void wait_lcd_done(void);
	void eaDogM_WriteChr(const int8_t);
	void eaDogM_WriteCommand(const uint8_t);
	void eaDogM_SetPos(const uint8_t, const uint8_t);
	void eaDogM_ClearRow(const uint8_t);
	void eaDogM_WriteString(char *);
	void eaDogM_WriteStringAtPos(const uint8_t, const uint8_t, char *);
	void eaDogM_WriteIntAtPos(const uint8_t, const uint8_t, const uint8_t);
	void eaDogM_WriteByteToCGRAM(const uint8_t, const uint8_t);
	void set_lcd_dim(const bool);
	void check_lcd_dim(const bool);

	char * eaDogM_Scroll_String(char *);
	void eaDogM_Scroll_Task(void);

	// DMA complete flag
	void clear_lcd_done(void);
	void spi_rec_done(void);
#ifdef USE_CAN
	extern void can_fd_lcd_mirror(const uint8_t, char *);
#endif

#define eaDogM_Cls()             eaDogM_WriteCommand(EADOGM_CMD_CLR)
#define eaDogM_CursorOn()        eaDogM_WriteCommand(EADOGM_CMD_CURSOR_ON)
#define eaDogM_CursorOff()       eaDogM_WriteCommand(EADOGM_CMD_CURSOR_OFF)
#define eaDogM_DisplayOn()       eaDogM_WriteCommand(EADOGM_CMD_DISPLAY_ON)
#define eaDogM_DisplayOff()      eaDogM_WriteCommand(EADOGM_CMD_DISPLAY_OFF)

	/*
	 * characters per line on the display
	 */
#define max_strlen	20

#ifdef	__cplusplus
}
#endif

#endif	/* EADOG_H */

