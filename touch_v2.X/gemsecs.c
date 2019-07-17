#include "gemsecs.h"

extern struct V_data V;
extern header10 r_block;
extern struct header10 H10[];
extern struct header12 H12[];
extern struct header13 H13[];
extern struct header14 H14[];
extern struct header17 H17[];
extern struct header18 H18[];
extern struct header24 H24[];
extern struct header26 H26[];
extern struct header27 H27[];
extern struct header33 H33[];
extern const header33 HC33[];
extern struct header153 H153[];
extern header254 H254[];
extern gem_message_type S[10];
extern gem_display_type D[2];

static bool secs_send(uint8_t *, const uint8_t, const bool, const uint8_t);

/*
 * Checksum for message and header block after length byte
 */
uint16_t block_checksum(uint8_t *byte_block, const uint16_t byte_count)
{
	uint16_t sum = 0, i;

	for (i = 0; i < byte_count; i++) {
		sum += byte_block[i];
	}
#ifdef RERROR
	if (rand() > ERROR_CHECKSUM)
		sum++;
#endif
	return sum;
}

/*
 * Checksum for data stream
 */
uint16_t run_checksum(const uint8_t byte_block, const bool clear)
{
	static uint16_t sum = 0;

	if (clear)
		sum = 0;

	sum += byte_block;
	return sum;
}

LINK_STATES m_protocol(LINK_STATES *m_link)
{
	uint8_t rxData;
	static uint8_t rxData_l = 0, *b_block = (uint8_t*) & H254[0];

	switch (*m_link) {
	case LINK_STATE_IDLE:
#ifdef DB1
		WaitMs(50);
#endif
		if (UART1_is_rx_ready()) {
			rxData = UART1_Read();
			if (rxData == ENQ) {
				//				IO_RB4_SetHigh();
				V.uart = 1;
				StartTimer(TMR_T2, T2);
				V.error = LINK_ERROR_NONE; // reset error status
				*m_link = LINK_STATE_ENQ;
			}
		}
		if (UART2_is_rx_ready()) {
			rxData = UART2_Read();
			if (rxData == ENQ) {
				//				IO_RB5_SetHigh();
				V.uart = 2;
				StartTimer(TMR_T2, T2);
				V.error = LINK_ERROR_NONE; // reset error status
				*m_link = LINK_STATE_ENQ;
			}
		}
		break;
	case LINK_STATE_ENQ:
		rxData_l = 0;
		if (TimerDone(TMR_T2)) {
			V.error = LINK_ERROR_T2;
			V.all_errors++;
			V.timer_error++;
			V.failed_receive = 2;
			*m_link = LINK_STATE_NAK;
		} else {
#ifdef DB2
			WaitMs(1);
			if (V.uart == 1)
#ifdef RERROR
				if (rand() < ERROR_COMM)
#endif
					secs_send((uint8_t*) & H27[0], sizeof(header27), true, V.uart);
			if (V.uart == 2)
#ifdef RERROR
				if (rand() < ERROR_COMM)
#endif
					secs_send((uint8_t*) & H10[0], sizeof(header10), true, V.uart);
			V.error = LINK_ERROR_NONE; // reset error status
			*m_link = LINK_STATE_EOT;
			StartTimer(TMR_T2, T2);
#else
			if (V.uart == 2 && UART1_is_rx_ready()) {
				rxData = UART1_Read();
				if (rxData == EOT) {
					StartTimer(TMR_T2, T2);
					V.error = LINK_ERROR_NONE; // reset error status
					*m_link = LINK_STATE_EOT;
				}
			}
			if (V.uart == 1 && UART2_is_rx_ready()) {
				rxData = UART2_Read();
				if (rxData == EOT) {
					StartTimer(TMR_T2, T2);
					V.error = LINK_ERROR_NONE; // reset error status
					*m_link = LINK_STATE_EOT;
				}
			}
#endif
		}
		break;
	case LINK_STATE_EOT:
		if (TimerDone(TMR_T2)) {
			V.error = LINK_ERROR_T2;
			V.timer_error++;
			V.all_errors++;
			V.failed_receive = 2;
			*m_link = LINK_STATE_NAK;
		} else {
			if (V.uart == 1 && UART1_is_rx_ready()) {
				rxData = UART1_Read();
				if (rxData_l == 0) { // start header reads
					r_block.length = rxData; // header+message bytes
					run_checksum(0, true);
					rxData_l++;
					b_block[sizeof(header254) - rxData_l] = rxData; // buffer the message
				} else {
					/*
					 * skip possible message data
					 */
					if (rxData_l <= sizeof(block10)) // save header only
						H10[1].block.b[sizeof(block10) - rxData_l] = rxData;
					if (rxData_l <= r_block.length) // generate checksum from data stream
						V.r_checksum = run_checksum(rxData, false);

					if (rxData_l == r_block.length + 1) // checksum high byte
						H10[1].checksum = (uint16_t) rxData << 8;
					if (rxData_l == r_block.length + 2) // checksum low byte
						H10[1].checksum += rxData;

					rxData_l++;
					b_block[sizeof(header254) - rxData_l] = rxData;
					if (rxData_l > (r_block.length + 2)) { // end of total data stream
						if (V.r_checksum == H10[1].checksum) {
							*m_link = LINK_STATE_ACK;
						} else { // bad checksum
							while (UART1_is_rx_ready()) // dump receive buffer of bad data
								rxData = UART1_Read();
							WaitMs(T1); // inter-character timeout
							V.error = LINK_ERROR_CHECKSUM;
							V.checksum_error++;
							V.all_errors++;
							V.failed_receive = 3;
							*m_link = LINK_STATE_NAK;
						}
					}
				}
			}

			if (V.uart == 2 && UART2_is_rx_ready()) {
				rxData = UART2_Read();
				if (rxData_l == 0) { // start header reads
					r_block.length = rxData; // header+message bytes
					run_checksum(0, true);
					rxData_l++;
					b_block[sizeof(header254) - rxData_l] = rxData; // buffer the message
				} else {
					/*
					 * skip possible message data
					 */
					if (rxData_l <= sizeof(block10)) // save header only
						H10[1].block.b[sizeof(block10) - rxData_l] = rxData;
					if (rxData_l <= r_block.length) // generate checksum from data stream
						V.r_checksum = run_checksum(rxData, false);

					if (rxData_l == r_block.length + 1) // checksum high byte
						H10[1].checksum = (uint16_t) rxData << 8;
					if (rxData_l == r_block.length + 2) // checksum low byte
						H10[1].checksum += rxData;

					rxData_l++;
					b_block[sizeof(header254) - rxData_l] = rxData;
					if (rxData_l > (r_block.length + 2)) { // end of total data stream
						if (V.r_checksum == H10[1].checksum) {
							*m_link = LINK_STATE_ACK;
						} else { // bad checksum
							while (UART2_is_rx_ready()) // dump receive buffer of bad data
								rxData = UART2_Read();
							WaitMs(T1); // inter-character timeout
							V.error = LINK_ERROR_CHECKSUM;
							V.checksum_error++;
							V.all_errors++;
							V.failed_receive = 4;
							*m_link = LINK_STATE_NAK;
						}
					}
				}
			}
		}
		break;
	case LINK_STATE_ACK:
#ifdef DB1
		WaitMs(1);
#endif
		V.stream = H10[1].block.block.stream;
		V.function = H10[1].block.block.function;
		V.systemb = H10[1].block.block.systemb;
		V.rbit = H10[1].block.block.rbit;
		V.wbit = H10[1].block.block.wbit;
		V.ebit = H10[1].block.block.ebit;
		V.failed_receive = false;
		secs_II_monitor_message(V.stream, V.function, LDELAY); // log selected messages
		V.g_state = secs_gem_state(V.stream, V.function);
		*m_link = LINK_STATE_DONE;
		//		IO_RB4_SetLow();
		//		IO_RB5_SetLow();
		break;
	case LINK_STATE_NAK:
		*m_link = LINK_STATE_ERROR;
		V.all_errors++;
		while (UART1_DataReady) { // dump the receive buffer
			UART1_Read();
		}
		while (UART2_DataReady) { // dump the receive buffer
			UART2_Read();
		}
		break;
	case LINK_STATE_ERROR:
		break;
	case LINK_STATE_DONE: // normally we don't execute this code state
		V.failed_receive = false;
		//		IO_RB4_Toggle();
		//		IO_RB5_Toggle();
	default:
		*m_link = LINK_STATE_IDLE;
		break;
	}

	return *m_link;
}

LINK_STATES r_protocol(LINK_STATES * r_link)
{
	uint8_t rxData;
	static uint8_t rxData_l = 0, retry = RTY, *b_block, d = 1;

	switch (*r_link) {
	case LINK_STATE_IDLE:
		if (UART1_is_rx_ready()) {
			rxData = UART1_Read();
			if (rxData == ENQ) {
				//				IO_RB4_SetHigh();
				DEBUG1_SetHigh();
				V.error = LINK_ERROR_NONE; // reset error status
				*r_link = LINK_STATE_ENQ;
				if (TimerDone(TMR_HBIO))
					StartTimer(TMR_HBIO, HBTS); // add short idle time
			}
		}
		break;
	case LINK_STATE_ENQ:
		rxData_l = 0; // message byte counter
		d = 1; // data byte counter
		b_block = (uint8_t*) & H254[0];
		UART1_Write(EOT);
		StartTimer(TMR_T2, T2);
		*r_link = LINK_STATE_EOT;
#ifdef DB2
		WaitMs(1);
		//H27[0].block.block.systemb = V.ticks; // make distinct, testing S1F13
		//secs_send((uint8_t*) & H27[0], sizeof(header27), true, 1);
		H10[3].block.block.systemb = V.ticks; // make distinct, testing S1F1
		secs_send((uint8_t*) & H10[3], sizeof(header10), true, 1);
#endif
		break;
	case LINK_STATE_EOT:
		if (TimerDone(TMR_T2)) {
			V.timer_error++;
			V.all_errors++;
			if (!retry--) { // check for stalls
				V.error = LINK_ERROR_T2;
				V.failed_receive = 1;
				V.all_errors++;
				*r_link = LINK_STATE_NAK;
			} else {
				*r_link = LINK_STATE_IDLE; // retry
			}
		} else {
			if (UART1_is_rx_ready()) {
				rxData = UART1_Read();
				if (rxData_l == 0) { // start header reads
					r_block.length = rxData; // header+message bytes
					run_checksum(0, true);
					rxData_l++;
					b_block[sizeof(header254) - rxData_l] = rxData; // buffer the message
				} else {
					/*
					 * skip possible message data
					 */
					if (rxData_l <= sizeof(block10)) // save header only
						H10[1].block.b[sizeof(block10) - rxData_l] = rxData;

					if (d <= 16) {
						if (rxData_l == sizeof(block10) + d) { // save possible data format codes
							V.response.ack[d - 1] = rxData;
							d++;
						}
					}

					if (rxData_l <= r_block.length) // generate checksum from data stream
						V.r_checksum = run_checksum(rxData, false);

					if (rxData_l == r_block.length + 1) // checksum high byte
						H10[1].checksum = (uint16_t) rxData << 8;
					if (rxData_l == r_block.length + 2) // checksum low byte
						H10[1].checksum += rxData;

					rxData_l++;
					b_block[sizeof(header254) - rxData_l] = rxData;
					if (rxData_l > (r_block.length + 2)) { // end of total data stream
						if (V.r_checksum == H10[1].checksum) {
							*r_link = LINK_STATE_ACK;
							DEBUG1_SetHigh();
						} else { // bad checksum
							while (UART1_is_rx_ready()) // dump receive buffer of bad data
								rxData = UART1_Read();
							WaitMs(T1); // inter-character timeout
							V.error = LINK_ERROR_CHECKSUM;
							V.checksum_error++;
							V.all_errors++;
							V.failed_receive = 2;
							*r_link = LINK_STATE_NAK;
						}
					}
				}
			}
		}
		break;
	case LINK_STATE_ACK:
		UART1_Write(ACK);
		V.stream = H10[1].block.block.stream;
		V.function = H10[1].block.block.function;
		V.systemb = H10[1].block.block.systemb;
		V.rbit = H10[1].block.block.rbit;
		V.wbit = H10[1].block.block.wbit;
		V.ebit = H10[1].block.block.ebit;
		secs_II_monitor_message(V.stream, V.function, SDELAY); // log selected messages
		V.g_state = secs_gem_state(V.stream, V.function);
		V.failed_receive = false;
		*r_link = LINK_STATE_DONE;
		V.abort = LINK_ERROR_NONE;
		//		IO_RB4_SetLow();
		break; // normally we don't execute LINK_STATE_DONE commands
	case LINK_STATE_NAK:
		UART1_Write(NAK);
		*r_link = LINK_STATE_ERROR;
		V.all_errors++;
		while (UART1_DataReady) { // dump the receive buffer
			UART1_Read();
		}
		retry = RTY;
		break;
	case LINK_STATE_ERROR:
		break;
	case LINK_STATE_DONE: // auto move to idle to receive data from link
		V.failed_receive = false;
		V.abort = LINK_ERROR_NONE;
		//		IO_RB4_Toggle(); // indicate DONE state execution
	default:
		*r_link = LINK_STATE_IDLE;
		break;
	}

	return *r_link;
}

LINK_STATES t_protocol(LINK_STATES * t_link)
{
	uint8_t rxData;
	static uint8_t retry, requeue = false;
	static response_type block;

	switch (*t_link) {
	case LINK_STATE_IDLE:
		//		IO_RB5_SetHigh();
		V.error = LINK_ERROR_NONE; // reset error status
		retry = RTY;
		UART1_Write(ENQ);
		StartTimer(TMR_T2, T2);
		*t_link = LINK_STATE_ENQ;
#ifdef DB3
		WaitMs(1);
		UART1_put_buffer(EOT);
#endif
		break;
	case LINK_STATE_ENQ:
		if (TimerDone(TMR_T2)) {
			V.timer_error++;
			V.all_errors++;
			if (!retry--) { // check for stalls
				V.error = LINK_ERROR_T2;
				V.all_errors++;
				V.failed_send = 1;
				*t_link = LINK_STATE_NAK;
			} else {
				StartTimer(TMR_T2, T2); // try again
			}
		} else {
			if (UART1_is_rx_ready()) {
				rxData = UART1_Read();
				if (rxData == EOT) {
					StartTimer(TMR_T3, T3);
					*t_link = LINK_STATE_EOT;
				}
				if (rxData == ENQ) { // contention with equipment master
					UART1_put_buffer(EOT);
					*t_link = LINK_STATE_DONE;
				}
			}
		}
		break;
	case LINK_STATE_EOT: // transmit the message
		if (!requeue)
			block = secs_II_message(V.stream, V.function); // parse proper response

		if (V.abort == LINK_ERROR_ABORT) {
			secs_send((uint8_t*) block.header, block.length, false, 1);
			V.failed_send = 2;
			*t_link = LINK_STATE_ERROR;
			V.all_errors++;
		} else {
			if (!requeue) {
				secs_send((uint8_t*) block.header, block.length, false, 1);
				if (V.queue)
					requeue = true;
			} else {
				requeue = false;
				V.queue = false;
				secs_send((uint8_t*) block.reply, block.reply_length, false, 1);
			}
			if (V.error == LINK_ERROR_NONE) {
				*t_link = LINK_STATE_ACK;
			} else {
				V.failed_send = 3;
				*t_link = LINK_STATE_ERROR;
				V.all_errors++;
			}
		}
#ifdef DB4
		WaitMs(1);
#ifdef RERROR
		if (rand() < ERROR_COMM)
#endif
			UART1_put_buffer(ACK);
#endif
		break;
	case LINK_STATE_ACK:
		if (TimerDone(TMR_T3)) {
			V.timer_error++;
			V.error = LINK_ERROR_T3;
			V.all_errors++;
			V.failed_send = 4;
			*t_link = LINK_STATE_NAK;
		} else {
			if (UART1_is_rx_ready()) {
				rxData = UART1_Read();
				if (rxData == ACK) {
					V.failed_send = false;
					*t_link = LINK_STATE_DONE;
					V.abort = LINK_ERROR_NONE;
					//					IO_RB5_SetLow();
				}
			}
		}
		break;
	case LINK_STATE_NAK: // send failure
		*t_link = LINK_STATE_ERROR;
		V.all_errors++;
		while (UART1_DataReady) { // dump the receive buffer
			UART1_Read();
		}
		break;
	case LINK_STATE_ERROR:
		break;
	case LINK_STATE_DONE: // normally we don't execute this code
		V.failed_send = false;
		V.abort = LINK_ERROR_NONE;
		//		IO_RB5_Toggle(); // indicate DONE state execution
		break;
	default:
		*t_link = LINK_STATE_IDLE;
		break;
	}

	return *t_link;
}

/* send the whole sequence including length and checksum bytes with the variable length */
static bool secs_send(uint8_t *byte_block, const uint8_t length, const bool fake, const uint8_t s_uart)
{
	uint8_t i, *k;
	uint16_t checksum;

	k = (uint8_t *) byte_block;

	++V.ticks; // transaction ID for host master messages
	V.error = LINK_ERROR_NONE;
	if ((length - 3) != k[length - 1]) { // check header length field byte
		V.error = LINK_ERROR_SEND;
		V.all_errors++;
		V.failed_send = true;
		return false; // don't send and return mismatch error
	}

	/*
	 * space up from bottom two bytes and don't include last byte
	 * for checksums
	 * we send C structures from the max byte to first in uC memory
	 */
	checksum = block_checksum(&k[2], length - 3);
	k[0] = checksum & 0xff;
	k[1] = (checksum >> 8)&0xff;
	V.t_checksum = checksum;

	switch (s_uart) {
	case 2:
		while (UART2_is_tx_ready() < 64); // wait for tx buffer to drain
		for (i = length; i > 0; i--) {
			if (fake) {
				UART2_put_buffer(k[i - 1]);
			} else {

				UART2_Write(k[i - 1]); // -1 for array memory addressing
			}
		}
		break;
	case 1:
	default:
		while (UART1_is_tx_ready() < 64); // wait for tx buffer to drain
		for (i = length; i > 0; i--) {
			if (fake) {
				UART1_put_buffer(k[i - 1]);
			} else {

				UART1_Write(k[i - 1]); // -1 for array memory addressing
			}
		}
		break;
	}

	return true;
}

/*
 * send the host message
 */
void hb_message()
{
	V.ping++;
	V.s_state = SEQ_STATE_TX;
	V.failed_send = false;
	V.t_l_state = LINK_STATE_IDLE;
	if (V.msg_error == MSG_ERROR_NONE) { // set ping message, not for streams
		V.stream = 1;
		V.function = 2; // S1F1 host ping
	} else {
		V.stream = 1;
		V.function = 14; // S1F13 host ping
	}
}

bool sequence_messages(const uint8_t sid)
{
	V.msg_error = MSG_ERROR_NONE;
	switch (sid) {
	case 1:
		S[0].stack = 6; // number of commands
		S[0].message = HC33[1]; // open doors
		S[1].message = HC33[1];
		S[2].message = HC33[1];
		S[3].message = HC33[0]; // close doors
		S[4].message = HC33[0];
		S[5].message = HC33[0];

		S[0].message.data[0] = 0x01;
		S[1].message.data[0] = 0x02;
		S[2].message.data[0] = 0x03;
		S[3].message.data[0] = 0x01;
		S[4].message.data[0] = 0x02;
		S[5].message.data[0] = 0x03;

		S[0].delay = 10000; // set delay between commands
		S[1].delay = 10000;
		S[2].delay = 10000;
		S[3].delay = 10000;
		S[4].delay = 10000;
		S[5].delay = 10000;

		S[0].block.header = (uint8_t*) & S[0].message; // S6F41
		S[0].block.length = sizeof(header33);
		S[1].block.header = (uint8_t*) & S[1].message;
		S[1].block.length = sizeof(header33);
		S[2].block.header = (uint8_t*) & S[2].message;
		S[2].block.length = sizeof(header33);
		S[3].block.header = (uint8_t*) & S[3].message;
		S[3].block.length = sizeof(header33);
		S[4].block.header = (uint8_t*) & S[4].message;
		S[4].block.length = sizeof(header33);
		S[5].block.header = (uint8_t*) & S[5].message;
		S[5].block.length = sizeof(header33);
		V.stack = S[0].stack; // queue up 10 messages, pop off the top of stack
		StartTimer(TMR_HBIO, S[V.stack - 1].delay); // restart sequence timer
		break;
	case 10: // write to equipment display sequence
	case 11:
		D[0].stack = 1; // number of commands
		D[0].message = H153[0]; // send a host display command
		D[0].delay = 5000; // set delay between commands
		D[0].block.header = (uint8_t*) & D[0].message; // S10F3
		D[0].block.length = sizeof(header153);
		V.stack = D[0].stack; // queue up 2 displays, pop off the top of stack
		StartTimer(TMR_HBIO, D[V.stack - 1].delay); // restart sequence timer
		break;
	default:
		V.stack = false;
		return false;
		break;
	}

	return true;
}

/*
 * standard text to the V.terminal string buffer
 */
void terminal_format(DISPLAY_TYPES t_format)
{
	switch (t_format) {
	case display_message:
		sprintf(V.terminal, msg0,
			V.all_errors, V.r_l_state, V.failed_receive, V.t_l_state, V.failed_send, V.checksum_error, VER);
		break;
	case display_online:
		sprintf(V.terminal, msg1,
			V.all_errors, V.r_l_state, V.failed_receive, V.t_l_state, V.failed_send, V.checksum_error, VER);
		break;
	case display_comm:
		sprintf(V.terminal, msg2,
			V.all_errors, V.r_l_state, V.failed_receive, V.t_l_state, V.failed_send, V.checksum_error, VER);
		break;
	default:
		sprintf(V.terminal, msg99,
			V.all_errors, V.r_l_state, V.failed_receive, V.t_l_state, V.failed_send, V.checksum_error, VER);
		break;
	}

}

/*
 * format S10F3 Terminal Display, Single in H153[0]
 */
uint16_t format_display_text(const char *data)
{
	int16_t j, i = 0, k, z = 0;

	k = strlen(data);

	if (!k) // check for null string
		return k;

	/*
	 * shift string into Terminal text array
	 */
	for (j = S10F3_STR_POS; j >= z; j--) {
		if (i < k) {
			H153[0].data[j] = data[i++];
		} else {
			H153[0].data[j] = ' ';
		}

	}
	return k;
}

/*
 * parse load-clock terminal command for port number
 */
static void parse_ll(void)
{
	if (V.response.cmdlen > 1) {
		switch (V.response.mparm) { // port selection
		case '1':
		case '2':
		case '3':
		case 'A':
		case 'B':
		case 'C':
		case 'a':
		case 'b':
		case 'c':
			H33[0].data[0] = V.response.mparm & 0x03;
			break;
		default:
			H33[0].data[0] = 0x01;
			break;
		}
	} else {
		H33[0].data[0] = 0x01;
	}
	V.llid = H33[0].data[0];
}

/*
 * parse sequence command for sequence number from operator screen text
 */
static void parse_sid(void)
{
	if (V.response.cmdlen > 1) {
		switch (V.response.mparm) { // port selection
		case '1':
		case '2':
		case '3':
		case 'A':
		case 'B':
		case 'C':
		case 'a':
		case 'b':
		case 'c':
			V.sid = V.response.mparm & 0x03;
			break;
		default:
			V.sid = 0x01;
			break;
		}
	} else {
		V.sid = 0x01;
	}
}

/*
 * terminal response types for equipment
 */
P_CODES s10f1_opcmd(void)
{
	sprintf(V.info, " Terminal          ");
	V.response.cmdlen = V.response.ack[6]; // length of command string
	V.response.TID = V.response.ack[4]; // TID of equipment message
	V.response.mcode = V.response.ack[7]; // first char of equipment message
	V.response.mparm = V.response.ack[8]; // second char

	if (V.response.cmdlen == 0)
		return CODE_ERR;

	if (V.response.mcode == 'M' || V.response.mcode == 'm')
		return CODE_TS;

	if (V.response.mcode == 'C' || V.response.mcode == 'c') { // ready cassette load-lock control
		parse_ll();

		switch (V.e_types) {
		case GEM_VII80:
			H33[0].data[18] = '1';
			H33[0].data[17] = '6';
			break;
		case GEM_E220:
			H33[0].data[18] = '1';
			H33[0].data[17] = '0';
			break;
		default:
			break;
		}

		return CODE_LOAD;
	}

	if (V.response.mcode == 'R' || V.response.mcode == 'r') { // close door load-lock control
		parse_ll();

		switch (V.e_types) {
		case GEM_VII80:
			H33[0].data[18] = '1';
			H33[0].data[17] = '7';
			break;
		case GEM_E220:
			H33[0].data[18] = '1';
			H33[0].data[17] = '0';
			break;
		default:
			break;
		}

		return CODE_LOAD;
	}

	if (V.response.mcode == 'P' || V.response.mcode == 'p') { // close door, rough and hivac load-lock control
		parse_ll();

		switch (V.e_types) {
		case GEM_VII80:
			H33[0].data[18] = '1';
			H33[0].data[17] = '8';
			break;
		case GEM_E220:
			H33[0].data[18] = '1';
			H33[0].data[17] = '0';
			break;
		default:
			break;
		}

		return CODE_PUMP;
	}

	if (V.response.mcode == 'O' || V.response.mcode == 'o') { // vent & open load-lock control
		parse_ll();

		switch (V.e_types) {
		case GEM_VII80:
			H33[0].data[18] = '1';
			H33[0].data[17] = '2';
			break;
		case GEM_E220:
			H33[0].data[18] = '1';
			H33[0].data[17] = '0';
			break;
		default:
			break;
		}

		return CODE_UNLOAD;
	}

	if (V.response.mcode == 'L' || V.response.mcode == 'l') {
		sprintf(V.info, " Log file reset          ");
		return CODE_LOG;
	}

	if (V.response.mcode == 'S' || V.response.mcode == 's') {
		switch (V.e_types) {
		case GEM_VII80:
			break;
		case GEM_E220:
			break;
		default:
			break;
		}
		return CODE_SEQUENCE;
	}

	if (V.response.mcode == 'D' || V.response.mcode == 'd') {
		sprintf(V.info, " Debug Toggle            ");
		return CODE_DEBUG;
	}

	return CODE_TS;
}

/*
 * decode offline, online ceid codes
 */
uint16_t s6f11_opcmd(void)
{
	V.response.ceid = V.response.ack[9]; // CEID
	V.response.ceid = H254[0].data[(sizeof(H254[0].data) - 1) - 9]; // get CEID using full message block buffer

	V.testing = (sizeof(H254[0].data) - 1) - 9;

	return V.response.ceid;
}

/*
 * load block structure with the correct sequence message to send
 */
bool gem_messages(response_type *block, const uint8_t sid)
{
	if (!V.stack)
		return false;

	switch (sid) {
	case 1: // close doors sequence
		StartTimer(TMR_HBIO, S[V.stack - 1].delay);
		*block = S[V.stack - 1].block; // shallow contents copy
		S[V.stack - 1].message.block.block.systemb = V.ticks;
		V.llid = S[V.stack - 1].message.data[0];
		break;
	case 10: // equipment display sequence
		StartTimer(TMR_HBIO, D[V.stack - 1].delay);
		*block = D[V.stack - 1].block; // shallow contents copy
		D[V.stack - 1].message.block.block.systemb = V.ticks;
		break;
	default:
		StartTimer(TMR_HBIO, S[V.stack - 1].delay);
		*block = S[V.stack - 1].block; // shallow contents copy
		S[V.stack - 1].message.block.block.systemb = V.ticks;
		V.llid = S[V.stack - 1].message.data[0];
		break;
	}

	V.stack--;
	return true;
}

/*
 * parse stream and response codes into a message pointer and length to send message in response
 */
response_type secs_II_message(const uint8_t stream, const uint8_t function)
{
	static response_type block;
	uint16_t i = 0;

	IO_RB4_Toggle();
	V.abort = LINK_ERROR_NONE;
	V.queue = false;
	block.respond = false;

	if (TimerDone(TMR_HBIO)) { // hold sequences during equipment messages
		if (V.stack) {
			gem_messages(&block, V.sid);
			if (V.sid >= 10) {
				set_display_info(DIS_SEQUENCE_M);
			} else {
				set_display_info(DIS_SEQUENCE);
			}
			vterm_sequence();
			StartTimer(TMR_INFO, TDELAY);
			V.set_sequ = true;
			return(block);
		}
		StartTimer(TMR_HBIO, HBTS); // add short idle time
	}

	switch (stream) { // from equipment
	case 1:
		switch (function) { // from equipment
		case 1: // S1F2 host response and S1F1 send
			block.header = (uint8_t*) & H12[0];
			block.length = sizeof(header12);
			H12[0].block.block.systemb = V.systemb;
			H10[0].block.block.systemb = V.ticks;
			block.respond = true;
			block.reply = (uint8_t*) & H10[0]; // S1F1 send queue
			block.reply_length = sizeof(header10);
			V.queue = true;
			break;
		case 2: // S1F1 host heartbeat send to equipment
			block.header = (uint8_t*) & H10[0];
			block.length = sizeof(header10);
			H10[0].block.block.systemb = V.systemb;
			break;
		case 3: // S1F4
			block.header = (uint8_t*) & H14[0];
			block.length = sizeof(header14);
			H14[0].block.block.systemb = V.systemb;
			break;
		case 13: // S1F14 response and S1F13 send
			block.header = (uint8_t*) & H17[0];
			block.length = sizeof(header17);
			H17[0].block.block.systemb = V.systemb;
			H12[1].block.block.systemb = V.ticks;
			block.respond = true;
			block.reply = (uint8_t*) & H12[1]; // S1F13 send queue
			block.reply_length = sizeof(header12);
			V.queue = true;
			break;
			//		case 14: // model and rev information
			//			block.header = (uint8_t*) & H12[1];
			//			block.length = sizeof(header12);
			//			H12[1].block.block.systemb = V.systemb;
			//			break;
		default: // S1F0 abort
			H10[2].block.block.stream = stream;
			block.header = (uint8_t*) & H10[2];
			block.length = sizeof(header10);
			H10[2].block.block.systemb = V.systemb;
			V.abort = LINK_ERROR_ABORT;
			V.all_errors++;
			break;
		}
		break;
	case 2:
		switch (function) {
		case 17: // S2F18
#ifdef Y2KTIME
			block.header = (uint8_t*) & H26[0];
			block.length = sizeof(header26);
			H26[0].block.block.systemb = V.systemb;
#else
			block.header = (uint8_t*) & H24[0];
			block.length = sizeof(header24);
			H24[0].block.block.systemb = V.systemb;
#endif
			break;
		case 25: // S2F26
			block.header = (uint8_t*) & H13[3];
			block.length = sizeof(header13);
			H13[3].block.block.systemb = V.systemb;
			break;
		default: // S2F0 abort
			H10[2].block.block.stream = stream;
			block.header = (uint8_t*) & H10[2];
			block.length = sizeof(header10);
			H10[2].block.block.systemb = V.systemb;
			V.abort = LINK_ERROR_ABORT;
			V.all_errors++;
			break;
		}
		break;
	case 5:
		switch (function) {
		case 1: // S5F2
			block.header = (uint8_t*) & H13[2];
			block.length = sizeof(header13);
			H13[2].block.block.systemb = V.systemb;
			break;
		default: // S5F0 abort
			H10[2].block.block.stream = stream;
			block.header = (uint8_t*) & H10[2];
			block.length = sizeof(header10);
			H10[2].block.block.systemb = V.systemb;
			V.abort = LINK_ERROR_ABORT;
			V.all_errors++;
			break;
		}
		break;
	case 6:
		switch (function) {
			uint32_t ceid = 0;
		case 11: // S6F12
			ceid = s6f11_opcmd(); // look for event codes for equipment types
			switch (V.e_types) {
			case GEM_VII80:
				if (ceid == V_OSCREEN || ceid == V_SSCREEN) {
					V.response.host_display_ack = true;
					V.sid = 10;
				}
				break;
			case GEM_E220:
				if (ceid == E_OSCREEN) {
					V.response.host_display_ack = true;
					V.sid = 10;
				}
				break;
			default:
				break;
			}
			if (ceid == V_OSCREEN || ceid == V_SSCREEN) {
				V.response.host_display_ack = true;
			}
			block.header = (uint8_t*) & H13[0];
			block.length = sizeof(header13);
			H13[0].block.block.systemb = V.systemb;
			H13[0].block.block.function = 12;
			break;
		case 13: // S6F14			
			block.header = (uint8_t*) & H13[0];
			block.length = sizeof(header13);
			H13[0].block.block.systemb = V.systemb;
			H13[0].block.block.function = 14;
			break;
		case 25: // S6F26
			block.header = (uint8_t*) & H13[0];
			block.length = sizeof(header13);
			H13[0].block.block.systemb = V.systemb;
			H13[0].block.block.function = 26;
			break;
		default: // S6F0 abort
			H10[2].block.block.stream = stream;
			block.header = (uint8_t*) & H10[2];
			block.length = sizeof(header10);
			H10[2].block.block.systemb = V.systemb;
			V.abort = LINK_ERROR_ABORT;
			V.all_errors++;
			break;
		}
		break;
	case 9:
		switch (function) {
		case 1:
			break;
		case 3:
			break;
		case 5:
			break;
		case 7:
			break;
		case 9:
			V.equip_timeout++;
			break;
		case 11:
			break;
		case 13:
			break;
		default: // S9F0 abort
			H10[2].block.block.stream = stream;
			block.header = (uint8_t*) & H10[2];
			block.length = sizeof(header10);
			H10[2].block.block.systemb = V.systemb;
			V.abort = LINK_ERROR_ABORT;
			V.all_errors++;
			break;
		}
		break;
	case 10:
		V.set_sequ = true;
		switch (function) {
		case 1: // S10F2 Terminal Request Acknowledge
			block.header = (uint8_t*) & H13[1];
			block.length = sizeof(header13);
			H13[1].block.block.systemb = V.systemb;
			H153[0].block.block.systemb = V.ticks;
			set_display_info(DIS_TERM);

			switch (s10f1_opcmd()) {
			case CODE_TM:
				block.respond = true;
				block.reply = (uint8_t*) & H153[1]; // S10F5 send Terminal Display, Multi-line, queue
				block.reply_length = sizeof(header153);
				H153[1].data[S10F3_TID_POS] = V.response.TID;
				V.queue = true;
				break;
			case CODE_LOAD:
				block.respond = true;
				block.reply = (uint8_t*) & H33[0]; // S6F41 send load lock ready command
				block.reply_length = sizeof(header33);
				V.queue = true;
				set_display_info(DIS_LOAD);
				break;
			case CODE_UNLOAD:
				block.respond = true;
				block.reply = (uint8_t*) & H33[0]; // S6F41 send load lock unload  command
				block.reply_length = sizeof(header33);
				V.queue = true;
				set_display_info(DIS_UNLOAD);
				break;
			case CODE_PUMP:
				block.respond = true;
				block.reply = (uint8_t*) & H33[0]; // S6F41 send load lock pump command
				block.reply_length = sizeof(header33);
				V.queue = true;
				set_display_info(DIS_PUMP);
				break;
			case CODE_SEQUENCE:
				parse_sid();
				sequence_messages(V.sid);
				set_display_info(DIS_SEQUENCE);
				V.sequences++;
				break;
			case CODE_TS:
				block.respond = true;
				block.reply = (uint8_t*) & H153[0]; // S10F3 send Terminal Display, Single, queue
				block.reply_length = sizeof(header153);
				H153[0].data[S10F3_TID_POS] = V.response.TID;
				terminal_format(display_message);
				format_display_text(V.terminal);
				V.queue = true;
				break;
			case CODE_LOG:
				do {
					DATAEE_WriteByte(i, 0xff);
				} while (++i <= 764); // overwrite EEPROM data but leave program data intact in the top 256 bytes
				V.response.log_num = 0;
				V.response.log_seq = 0;
				set_display_info(DIS_LOG);
				break;
			case CODE_DEBUG:
				V.debug = !V.debug;
			default:
				break;
			}
			set_temp_display_help(display_info());
			vterm_sequence();
			StartTimer(TMR_INFO, TDELAY);
			break;
		default: // S10F0 abort
			H10[2].block.block.stream = stream;
			block.header = (uint8_t*) & H10[2];
			block.length = sizeof(header10);
			H10[2].block.block.systemb = V.systemb;
			V.abort = LINK_ERROR_ABORT;
			V.all_errors++;
			break;
		}
		break;
	default: // SxF0 abort
		H10[2].block.block.stream = stream;
		block.header = (uint8_t*) & H10[2];
		block.length = sizeof(header10);
		H10[2].block.block.systemb = V.systemb;
		V.abort = LINK_ERROR_ABORT;
		V.all_errors++;
		break;
	}

	return(block);
}

/*
 * logger helper
 */
static void ee_logger(const uint8_t stream, const uint8_t function, const uint16_t dtime, uint8_t *msg_data)
{
	uint16_t i = 0;

	do {
		DATAEE_WriteByte(i + ((V.response.log_seq & 0x03) << 8), msg_data[254 + 2 - i]);
	} while (++i <= 255);

	sprintf(V.info, "Saved S%dF%d %d     ", stream, function, V.response.log_num);
	StartTimer(TMR_INFO, dtime);
	V.response.info = DIS_LOG;
	V.response.log_num++;
	V.response.log_seq++;
	if (V.response.log_seq >= 3) // limit saving to first three positions, last position is for program settings
		V.response.log_seq = 0;
}

/*
 * parse stream and response codes for log function to EEPROM
 */
void secs_II_monitor_message(const uint8_t stream, const uint8_t function, const uint16_t dtime)
{
	uint8_t * msg_data = (uint8_t*) & H254[0];
	static uint8_t store1_1 = true, store1_13 = true, store6_11 = true;


	++V.ticks; // message sequence
	switch (stream) { // from equipment
	case 1:
		switch (function) { // from equipment
		case 1:
			if (!store1_1)
				break;
			store1_1 = false;

			ee_logger(stream, function, dtime, msg_data);
			break;
		case 13:
			if (!store1_13)
				break;
			store1_13 = false;

			ee_logger(stream, function, dtime, msg_data);
			break;
		default:
			break;
		}
		break;
	case 2:
		switch (function) {
		case 41: // S2F41 remote command from host
		case 42: // S2F42 response from equipment
			/* always store this message */
			ee_logger(stream, function, dtime, msg_data);
			if (function == 42) { // check for failed command
				//				if ((H254[0].length == 0x11) && ((V.msg_ret = H254[0].data[(sizeof(H254[0].data) - 1) - 4]) != 0x00)) {
				//					V.msg_error = MSG_ERROR_DATA;
				//					V.response.info = DIS_SEQUENCE; // show error message
				//				} else {
				V.msg_ret = 0;
				V.msg_error = MSG_ERROR_NONE;
				V.response.info = DIS_STR;
				//				}
			}
			break;
		default:
			break;
		}
	case 6:
		switch (function) {
		case 11: // S6F11 // from host
			if (!store6_11)
				break;
			store6_11 = false;

			ee_logger(stream, function, dtime, msg_data);
			break;
		default:
			break;
		}

		break;
	default:
		break;
	}
}

/*
 * parse received stream and response codes for host operational state and
 * equipment model types
 * Be permissive, almost any stream command make us online/remote
 */
GEM_STATES secs_gem_state(const uint8_t stream, const uint8_t function)
{
	static GEM_STATES block = GEM_STATE_DISABLE;
	static GEM_EQUIP equipment = GEM_GENERIC;

	switch (stream) { // from equipment
	case 1:
		switch (function) {
#ifdef DB2
		case 1:
#endif
		case 2:
			if (block != GEM_STATE_REMOTE) {
				if (TimerDone(TMR_HBIO)) {
					StartTimer(TMR_HBIO, HBTL); // restart the heartbeat
				}
				terminal_format(display_online);
				format_display_text(V.terminal);
				V.response.mesgid = 1;
				V.sequences++;
				V.sid = 10;
				sequence_messages(V.sid); // send a hello text message
				set_display_info(DIS_SEQUENCE_M);
			}

			block = GEM_STATE_REMOTE;
			V.ticker = 0;

			break;
		case 13: // parse equipment model from comm request response
			switch (V.response.ack[4]) {
			case 'V':
				switch (V.response.ack[5]) {
				case 'I': // VII80 for Varian Viision 80
					equipment = GEM_VII80;
					break;
				default:
					equipment = GEM_GENERIC;
					break;
				}
				break;
			case 'E':
				switch (V.response.ack[5]) {
				case '2':
				case '5': // E220 or E500
					equipment = GEM_E220;
					break;
				default:
					equipment = GEM_GENERIC;
					break;
				}
				break;
			default:
				equipment = GEM_GENERIC;
				break;
			}

			if (block != GEM_STATE_REMOTE) {
				terminal_format(display_online);
				format_display_text(V.terminal);
				V.response.mesgid = 1;
				V.sequences++;
				V.sid = 11;
				sequence_messages(V.sid); // send hello text message to equipment screen
				set_display_info(DIS_SEQUENCE_M);
			}
			block = GEM_STATE_REMOTE;
			V.ticker = 0;
			break;
		case 14:
			if (block != GEM_STATE_REMOTE)
				block = GEM_STATE_COMM;
			V.ticker = 15;
			break;
#ifdef DB2
		case 15:
#endif
		case 16:
			block = GEM_STATE_OFFLINE;
			V.ticker = 0;
			break;
#ifdef DB2
		case 17:
#endif
		case 18:
			block = GEM_STATE_ONLINE;
			V.ticker = 0;
			break;
		default:
			if (block == GEM_STATE_DISABLE) {
				block = GEM_STATE_COMM;
				V.ticker = 15;
			}
			break;
		}
		break;
	case 5: // alarms
		switch (function) {
		default:
			V.alarm = function;
			break;
		}
		break;
	case 9:
		switch (function) {
		default:
			V.alarm = function;
			if (V.ticker != 45)
				V.ticker = 15;
			break;
		}
		break;
	default:
		if (block == GEM_STATE_DISABLE) {
			block = GEM_STATE_COMM;
			V.ticker = 45;
		}
		break;
	}

	V.e_types = equipment;
	return(block);
}