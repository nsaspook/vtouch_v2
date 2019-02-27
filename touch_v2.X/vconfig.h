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
#ifndef __DEFINED_int24_t
typedef signed long long int24_t;
#define __DEFINED_int24_t
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

    typedef enum {
        /* rotation state machine */
        SEQ_STATE_INIT = 0,
        SEQ_STATE_RUN,
        SEQ_STATE_SET,
        SEQ_STATE_TRIGGER,
        SEQ_STATE_DONE,
        SEQ_STATE_ERROR

    } SEQ_STATES;

    typedef struct V_data { // control data structure with possible volatile issues
        SEQ_STATES s_state;
        char buf[64];
        volatile uint32_t ticks;
    } V_data;
#ifdef	__cplusplus
}
#endif

#endif	/* VCONFIG_H */

