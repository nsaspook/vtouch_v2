/* 
 * File:   vconfig.h
 * Author: root
 *
 * Created on February 19, 2019, 4:41 PM
 */

#ifndef VCONFIG_H
#define	VCONFIG_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <xc.h>
#include "mcc_generated_files/spi1.h"
#include "mcc_generated_files/pin_manager.h"
#include "ringbufs.h"

#define SLED	LATEbits.LATE0

#define EADOGM_CMD_CLR		1
#define EADOGM_CMD_CURSOR_ON     0b00001111
#define EADOGM_CMD_CURSOR_OFF    0b00001100
#define EADOGM_CMD_DISPLAY_ON    0b00001100
#define EADOGM_CMD_DISPLAY_OFF   0b00001000
#define EADOGM_CMD_DDRAM_ADDR    0b10000000
#define EADOGM_CMD_CGRAM_ADDR    0b01000000
#define EADOGM_CMD_SELECT_R0     0b00011000
#define EADOGM_CMD_SELECT_R1     0b00010000
#define EADOGM_CMD_SET_TABLE2    0b00101010
#define EADOGM_COLSPAN		16

	struct spi_link_type { // internal state table
		uint8_t SPI_LCD : 1;
		uint8_t SPI_AUX : 1;
		uint8_t LCD_TIMER : 1;
		volatile uint8_t LCD_DATA : 1;
		uint16_t delay;
		uint8_t config;
		struct ringBufS_t *tx1b, *tx1a;
		volatile int32_t int_count;
	};

#ifdef	__cplusplus
}
#endif

#endif	/* VCONFIG_H */

