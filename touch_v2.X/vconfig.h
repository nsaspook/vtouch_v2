/* 
 * File:   vconfig.h
 * Author: root
 *
 * Created on February 19, 2019, 4:41 PM
 */

#ifndef VCONFIG_H
#define	VCONFIG_H

#include "mcc_generated_files/adcc.h"
#include "mcc_generated_files/ext_int.h"

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include "mcc_generated_files/spi1.h"
#include "mcc_generated_files/pin_manager.h"
#include "ringbufs.h"

#define VER	"0.94"
	/*
	 * 0.1 MBMC new version for one 24vdc battery string for the 57K42
	 * 0.2 start to configure the hardware for mbmc duty
	 * 0.3 configure for mbmc_io board
	 * 0.4 ADC setup
	 * 0.5 remove gemsecs coding
	 * 0.6 adc scanning by threshold interrupt using burst average mode
	 * 0.7 system data conversion from ADC data
	 * 0.8 basic current and voltage tracking
	 * 0.9 auto convert bitmaps
	 * 0.91 start adding 32 utc time code
	 * 0.94 switch input code
	 */
	//#define TESTING
	//#define DISPLAY_SLOW

#define SLED	LED0_LAT
#define DLED	DEBUG2_LAT

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

#define T1	500
#define T2	3000
#define T3	5000
#define T4	5000
#define HBTS	5000 // short ping delay
#define HBTL	30000 // ping delay
#define	RTY	3
#define ERROR_CHECKSUM	31500
#define ERROR_COMM	31500

#define DEFAULT_TID	1
#define TDELAY	3000
#define LDELAY	1000
#define SDELAY	500
#define BDELAY	300
#define DDELAY	250  // display update spacing
#define DFLIP	1500 // display info flipping spacing

	/*
	 * offsets in bytes
	 */

#define TX_RESERVE	59

#define MAX_LINE	16

	struct spi_link_type { // internal SPI state table
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
		DIS_STR = 0,
		DIS_HELP,
		DIS_ERR,
		DIS_CLEAR,
	} D_CODES;

	typedef struct terminal_type {
		uint8_t mesgid;
		uint8_t TID, mcode, mparm, cmdlen, log_seq;
		uint8_t host_display_ack : 1;
		D_CODES info, help_temp;
		uint16_t ceid;
		uint16_t log_num;
	} terminal_type;

	typedef enum {
		UI_STATE_INIT = 0,
		UI_STATE_HOST,
		UI_STATE_DEBUG,
		UI_STATE_LOG,
		UI_STATE_MON,
		UI_STATE_ERROR
	} UI_STATES;	
	
	typedef struct rbutton_type {
		uint8_t ostate : 1;
		uint8_t nstate : 1;
		uint8_t pressed : 1;
		uint8_t released : 1;
		uint8_t count;
	} rbutton_type;
	
	typedef struct V_data { // control data structure 
		UI_STATES ui_state;
		char buf[64], info[64];
		uint32_t ticks;
		int32_t testing;
		uint8_t error, abort, msg_error, msg_ret, alarm;
		UI_STATES ui_sw;
		uint16_t r_checksum, t_checksum, checksum_error, mode_pwm, sequences, all_errors;
		uint8_t set_sequ : 1, debug : 1, help : 1, stack : 3, help_id : 2;
		terminal_type response;
		volatile uint8_t ticker;
		bool flipper;
		volatile uint32_t highint_count, lowint_count, eeprom_count, timerint_count;
		volatile rbutton_type button[8];
	} V_data;

	typedef struct V_help {
		const char message[18], display[18];
	} V_help;



#ifdef	__cplusplus
}
#endif

#endif	/* VCONFIG_H */

