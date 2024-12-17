/* 
 * File:   gemsecs.h
 * Author: root
 *
 * Created on February 26, 2019, 2:58 PM
 */

#ifndef GEMSECS_H
#define	GEMSECS_H

#ifdef	__cplusplus
extern "C" {
#endif

#define ENQ	0x05
#define EOT	0x04
#define ACK	0x06
#define NAK	0x15

#include <stdio.h>
#include <string.h>
#include "vconfig.h"
#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/uart1.h"
#include "timers.h"
#include "mydisplay.h"
#include "msg_text.h"

	typedef struct block10_type {
		uint32_t systemb;
		uint8_t bidl;
		uint8_t bidh : 7;
		uint8_t ebit : 1;
		uint8_t function;
		uint8_t stream : 7;
		uint8_t wbit : 1;
		uint8_t didl;
		uint8_t didh : 7;
		uint8_t rbit : 1;
	} block10_type;

	typedef union block10 {
		uint8_t b[sizeof(block10_type)];
		block10_type block;
	} block10;

	typedef struct header10 {
		uint16_t checksum;
		block10 block;
		uint8_t length;
	} header10;

	typedef struct header12 {
		uint16_t checksum;
		uint8_t data[2];
		block10 block;
		uint8_t length;
	} header12;

	typedef struct header13 {
		uint16_t checksum;
		uint8_t data[3];
		block10 block;
		uint8_t length;
	} header13;

	typedef struct header14 {
		uint16_t checksum;
		uint8_t data[4];
		block10 block;
		uint8_t length;
	} header14;

	typedef struct header17 {
		uint16_t checksum;
		uint8_t data[7];
		block10 block;
		uint8_t length;
	} header17;

	typedef struct header18 {
		uint16_t checksum;
		uint8_t data[8];
		block10 block;
		uint8_t length;
	} header18;

	typedef struct header24 {
		uint16_t checksum;
		uint8_t data[12];
		uint8_t datam[2];
		block10 block;
		uint8_t length;
	} header24;

	typedef struct header26 {
		uint16_t checksum;
		uint8_t data[14];
		uint8_t datam[2];
		block10 block;
		uint8_t length;
	} header26;

	typedef struct header27 {
		uint16_t checksum;
		uint8_t data[17];
		block10 block;
		uint8_t length;
	} header27;

	typedef struct header33 {
		uint16_t checksum;
		uint8_t data[23];
		block10 block;
		uint8_t length;
	} header33;

	typedef struct header153 {
		uint16_t checksum;
		uint8_t data[143];
		block10 block;
		uint8_t length;
	} header153;

	typedef struct header254 {
		uint16_t checksum;
		uint8_t data[244];
		block10 block;
		uint8_t length;
	} header254;

	typedef struct response_type {
		uint8_t *header;
		uint8_t length;
		uint8_t *reply;
		uint8_t reply_length;
		uint8_t respond : 1;
	} response_type;

	typedef struct gem_message_type {
		header33 message;
		response_type block;
		uint16_t delay;
		uint8_t stack;
	} gem_message_type;

	typedef struct gem_display_type {
		header153 message;
		response_type block;
		uint16_t delay;
		uint8_t stack;
	} gem_display_type;

	uint16_t block_checksum(uint8_t *, const uint16_t);
	uint16_t run_checksum(const uint8_t, const bool);
	LINK_STATES m_protocol(LINK_STATES *);
	LINK_STATES r_protocol(LINK_STATES *);
	LINK_STATES t_protocol(LINK_STATES *);
	void hb_message(void);
	void terminal_format(DISPLAY_TYPES);
	uint16_t format_display_text(const char *);
	P_CODES s10f1_opcmd(void);
	uint16_t s6f11_opcmd(void);
	response_type secs_II_message(uint8_t, uint8_t);
	bool sequence_messages(uint8_t);
	bool gem_messages(response_type *, uint8_t);
	void secs_II_monitor_message(uint8_t, uint8_t, uint16_t);
	GEM_STATES secs_gem_state(uint8_t, uint8_t);

#ifdef	__cplusplus
}
#endif

#endif	/* GEMSECS_H */

