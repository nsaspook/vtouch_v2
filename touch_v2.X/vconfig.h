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

#define VER	"1.24G"
	/*
	 * 1.13G wafer load-lock control
	 * 1.15 add specific equipment types V.e_types
	 * 1.22 message sequencing in secs_II_message
	 */
	//#define TESTING
	//#define DISPLAY_SLOW

	//#define DB1
	//#define DB2
	//#define DB3
	//#define DB4
	//#define RERROR	// generate 'random' checksum/link errors to simulate rs-232 bit errors
#define SEQ_TEST	true	// testing message template transfers

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
#define T2	2000
#define T3	5000
#define T4	5000
#define HBT	30000
#define	RTY	3
#define ERROR_CHECKSUM	30000
#define ERROR_COMM	31000

#define DEFAULT_TID	1
#define TDELAY	3000
#define LDELAY	1000
#define SDELAY	500
#define BDELAY	300

#define Y2KTIME

	/*
	 * offsets in bytes
	 */

#define TX_RESERVE	59

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
		CODE_TS = 0,
		CODE_TM = 1,
		CODE_ONLOCAL = 2, // CEID codes
		CODE_ONREMOTE = 3,
		CODE_OFFLINE = 4,
		CODE_DEBUG,
		CODE_LOG,
		CODE_LOAD,
		CODE_UNLOAD,
		CODE_PUMP,
		CODE_HELP,
		CODE_SEQUENCE,
		CODE_ERR,
	} P_CODES;

	typedef enum {
		DIS_STR = 0,
		DIS_TERM,
		DIS_LOG,
		DIS_LOAD,
		DIS_UNLOAD,
		DIS_PUMP,
		DIS_HELP,
		DIS_SEQUENCE,
		DIS_ERR,
	} D_CODES;

	typedef struct terminal_type {
		uint8_t ack[32];
		uint8_t TID, mcode, mparm, cmdlen, log_seq;
		D_CODES info, help_temp;
		int32_t ceid;
		uint16_t log_num;
	} terminal_type;

	typedef enum {
		SEQ_STATE_INIT = 0,
		SEQ_STATE_RX,
		SEQ_STATE_TX,
		SEQ_STATE_TRIGGER,
		SEQ_STATE_QUEUE,
		SEQ_STATE_DONE,
		SEQ_STATE_ERROR
	} SEQ_STATES;

	typedef enum {
		UI_STATE_INIT = 0,
		UI_STATE_HOST,
		UI_STATE_DEBUG,
		UI_STATE_LOG,
		UI_STATE_ERROR
	} UI_STATES;

	typedef enum {
		GEM_STATE_DISABLE = 0,
		GEM_STATE_COMM,
		GEM_STATE_OFFLINE,
		GEM_STATE_ONLINE,
		GEM_STATE_REMOTE,
		GEM_STATE_ALARM,
		GEM_STATE_ERROR
	} GEM_STATES;

	typedef enum {
		GEM_GENERIC = 0,
		GEM_VII80,
		GEM_E220,
		GEM_ERROR
	} GEM_EQUIP;

	typedef enum {
		LINK_STATE_IDLE = 0,
		LINK_STATE_ENQ,
		LINK_STATE_EOT,
		LINK_STATE_ACK,
		LINK_STATE_DONE,
		LINK_STATE_NAK,
		LINK_STATE_ERROR
	} LINK_STATES;

	typedef enum {
		LINK_ERROR_NONE = 10,
		LINK_ERROR_T1,
		LINK_ERROR_T2,
		LINK_ERROR_T3,
		LINK_ERROR_T4,
		LINK_ERROR_CHECKSUM,
		LINK_ERROR_NAK,
		LINK_ERROR_ABORT,
		LINK_ERROR_SEND
	} LINK_ERRORS;

	typedef enum {
		MSG_ERROR_NONE = 0,
		MSG_ERROR_ID = 1,
		MSG_ERROR_STREAM = 3,
		MSG_ERROR_FUNCTION = 5,
		MSG_ERROR_DATA = 7,
		MSG_ERROR_TIMEOUT = 9,
		MSG_ERROR_DATASIZE = 11,
		MSG_ERROR_RESET = 20
	} MSG_ERRORS;

	typedef struct V_data { // control data structure 
		SEQ_STATES s_state;
		UI_STATES ui_state;
		GEM_STATES g_state;
		GEM_EQUIP e_types;
		LINK_STATES m_l_state;
		LINK_STATES r_l_state;
		LINK_STATES t_l_state;
		char buf[64], terminal[160], info[64];
		uint32_t ticks, systemb;
		int32_t testing;
		uint8_t stream, function, error, abort, msg_error;
		UI_STATES ui_sw;
		uint16_t r_checksum, t_checksum, checksum_error, timer_error, ping, mode_pwm;
		uint8_t rbit : 1, wbit : 1, ebit : 1, seq_test : 1,
		failed_send : 4, failed_receive : 4,
		queue : 1, reset : 1, debug : 1, help : 1, stack : 3;
		terminal_type response;
		uint8_t uart;
		volatile uint8_t ticker;
	} V_data;

#ifdef	__cplusplus
}
#endif

#endif	/* VCONFIG_H */

