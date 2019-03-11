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
extern struct header27 H27[];
extern struct header53 H53[];

/*
 * Checksum for message and header block after length byte
 */
uint16_t block_checksum(uint8_t *byte_block, uint16_t byte_count)
{
	uint16_t sum = 0, i;

	for (i = 0; i < byte_count; i++) {
		sum += byte_block[i];
	}
	return sum;
}

/*
 * Checksum for data stream
 */
uint16_t run_checksum(uint8_t byte_block, bool clear)
{
	static uint16_t sum = 0;

	if (clear)
		sum = 0;

	sum += byte_block;
	return sum;
}

LINK_STATES r_protocol(LINK_STATES *r_link)
{
	uint8_t rxData;
	static uint8_t rxData_l = 0, retry = RTY;

	switch (*r_link) {
	case LINK_STATE_IDLE:
		if (UART1_is_rx_ready()) {
			rxData = UART1_Read();
			if (rxData == ENQ) {
				V.error = LINK_ERROR_NONE; // reset error status
				*r_link = LINK_STATE_ENQ;
			}
		}
		break;
	case LINK_STATE_ENQ:
		rxData_l = 0;
		UART1_Write(EOT);
		StartTimer(TMR_T2, T2);
		*r_link = LINK_STATE_EOT;
#ifdef DB2
		WaitMs(5);
		H10[3].block.block.systemb = V.ticks; // make distinct
		secs_send((uint8_t*) & H10[3], sizeof(header10), true);
#endif
		break;
	case LINK_STATE_EOT:
		if (TimerDone(TMR_T2)) {
			if (!retry--) { // check for stalls
				V.error = LINK_ERROR_T2;
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
				} else {
					/*
					 * skip possible message data
					 */
					if (rxData_l <= 10) // save header only
						H10[1].block.b[r_block.length - rxData_l] = rxData;
					if (rxData_l <= r_block.length) // generate checksum from data stream
						V.r_checksum = run_checksum(rxData, false);

					if (rxData_l == r_block.length + 1) // checksum high byte
						H10[1].checksum = (uint16_t) rxData << 8;
					if (rxData_l == r_block.length + 2) // checksum low byte
						H10[1].checksum += rxData;

					rxData_l++;
					if (rxData_l > (r_block.length + 2)) { // end of total data stream
						if (V.r_checksum == H10[1].checksum) {
							*r_link = LINK_STATE_ACK;
						} else { // bad checksum
							while (UART1_is_rx_ready()) // dump receive buffer of bad data
								rxData = UART1_Read();
							WaitMs(T1); // inter-character timeout
							V.error = LINK_ERROR_CHECKSUM;
							*r_link = LINK_STATE_NAK;
						}
					}
				}
			}
		}
		break;
	case LINK_STATE_ACK:
		V.stream = H10[1].block.block.stream;
		V.function = H10[1].block.block.function;
		V.systemb = H10[1].block.block.systemb;
		V.rbit = H10[1].block.block.rbit;
		V.wbit = H10[1].block.block.wbit;
		V.ebit = H10[1].block.block.ebit;
		UART1_Write(ACK);
		V.failed_receive = false;
		*r_link = LINK_STATE_DONE;
		break;
	case LINK_STATE_NAK:
		V.failed_receive = true;
		UART1_Write(NAK);
		*r_link = LINK_STATE_ERROR;
		while (UART1_DataReady) { // dump the receive buffer
			UART1_Read();
		}
		retry = RTY;
		break;
	case LINK_STATE_ERROR:
		break;
	case LINK_STATE_DONE: // auto move to idle to receive data from link
		V.failed_receive = false;
	default:
		*r_link = LINK_STATE_IDLE;
		break;
	}

	return *r_link;
}

LINK_STATES t_protocol(LINK_STATES * t_link)
{
	uint8_t rxData;
	static uint8_t retry;
	response_type block;

	switch (*t_link) {
	case LINK_STATE_IDLE:
		V.error = LINK_ERROR_NONE; // reset error status
		retry = RTY;
		UART1_Write(ENQ);
		StartTimer(TMR_T2, T2);
		*t_link = LINK_STATE_ENQ;
#ifdef DB3
		WaitMs(5);
		UART1_put_buffer(EOT);
#endif
		break;
	case LINK_STATE_ENQ:
		if (TimerDone(TMR_T2)) {
			if (!retry--) { // check for stalls
				V.error = LINK_ERROR_T2;
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
	case LINK_STATE_EOT: // transmit the secondary message response
		block = secs_II_message(V.stream, V.function); // parse proper response
		if (V.abort == LINK_ERROR_ABORT) {
			secs_send((uint8_t*) block.header, block.length, false);
			*t_link = LINK_STATE_ERROR;
		} else {
			secs_send((uint8_t*) block.header, block.length, false);
			if (V.error == LINK_ERROR_NONE) {
				*t_link = LINK_STATE_ACK;
			} else {
				*t_link = LINK_STATE_ERROR;
			}
		}
#ifdef DB4
		WaitMs(5);
		UART1_put_buffer(ACK);
#endif
		break;
	case LINK_STATE_ACK:
		if (TimerDone(TMR_T3)) {
			V.error = LINK_ERROR_T3;
			*t_link = LINK_STATE_NAK;
		} else {
			if (UART1_is_rx_ready()) {
				rxData = UART1_Read();
				if (rxData == ACK) {
					V.failed_send = false;
					*t_link = LINK_STATE_DONE;
				}
			}
		}
		break;
	case LINK_STATE_NAK: // send failure
		V.failed_send = true;
		*t_link = LINK_STATE_ERROR;
		while (UART1_DataReady) { // dump the receive buffer
			UART1_Read();
		}
		break;
	case LINK_STATE_ERROR:
		break;
	case LINK_STATE_DONE: // stay in state until external state change trigger to idle
		V.failed_send = false;
		break;
	default:
		*t_link = LINK_STATE_IDLE;
		break;
	}

	return *t_link;
}

/* send the whole sequence including length and checksum bytes */
bool secs_send(uint8_t *byte_block, uint8_t length, bool fake)
{
	uint8_t i, *k;
	uint16_t checksum;

	k = (uint8_t *) byte_block;

	V.error = LINK_ERROR_NONE;
	if ((length - 3) != k[length - 1]) { // check header length field byte
		V.error = LINK_ERROR_SEND;
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

	while (UART1_is_tx_ready() < 64); // wait for tx buffer to drain
	for (i = length; i > 0; i--) {
		if (fake) {
			UART1_put_buffer(k[i - 1]);
		} else {
			UART1_Write(k[i - 1]); // -1 for array memory addressing
		}
	}

	return true;
}

/*
 * parse stream and response codes into a message pointer and length to send in response
 */
response_type secs_II_message(uint8_t stream, uint8_t function)
{
	static response_type block;

	V.abort = LINK_ERROR_NONE;

	switch (stream) {
	case 1:
		switch (function) {
		case 1: // S1F2
			block.header = (uint8_t*) & H12[0];
			block.length = sizeof(header12);
			H12[0].block.block.systemb = V.systemb;
			break;
		case 2: // S1F1
			block.header = (uint8_t*) & H10[0];
			block.length = sizeof(header10);
			H10[0].block.block.systemb = V.systemb;
			break;
		case 3: // S1F4
			block.header = (uint8_t*) & H14[0];
			block.length = sizeof(header14);
			H14[0].block.block.systemb = V.systemb;
			break;
		case 4: // S1F3
			block.header = (uint8_t*) & H18[0];
			block.length = sizeof(header18);
			H18[0].block.block.systemb = V.systemb;
			break;
		case 13: // S1F14
			block.header = (uint8_t*) & H17[0];
			block.length = sizeof(header17);
			H17[0].block.block.systemb = V.systemb;
			break;
		case 14: // S1F13
			block.header = (uint8_t*) & H27[0];
			block.length = sizeof(header27);
			H27[0].block.block.systemb = V.systemb;
			break;
		default: // S1F0 abort
			block.header = (uint8_t*) & H10[2];
			block.length = sizeof(header10);
			H10[2].block.block.systemb = V.systemb;
			V.abort = LINK_ERROR_ABORT;
			break;
		}
		break;
	case 2:
		switch (function) {
		case 17: // S2F18
			block.header = (uint8_t*) & H24[0];
			block.length = sizeof(header24);
			H24[0].block.block.systemb = V.systemb;
			break;
		default: // S1F0 abort
			block.header = (uint8_t*) & H10[2];
			block.length = sizeof(header10);
			H10[2].block.block.systemb = V.systemb;
			V.abort = LINK_ERROR_ABORT;
			break;
		}
		break;
	case 6:
		switch (function) {
		case 11: // S6F12
			block.header = (uint8_t*) & H13[0];
			block.length = sizeof(header13);
			H13[0].block.block.systemb = V.systemb;
			break;
		case 12: // S6F11
			block.header = (uint8_t*) & H53[0];
			block.length = sizeof(header53);
			H53[0].block.block.systemb = V.systemb;
			break;
		default: // S1F0 abort
			block.header = (uint8_t*) & H10[2];
			block.length = sizeof(header10);
			H10[2].block.block.systemb = V.systemb;
			V.abort = LINK_ERROR_ABORT;
			break;
		}
		break;
	default: // S1F0 abort
		block.header = (uint8_t*) & H10[2];
		block.length = sizeof(header10);
		H10[2].block.block.systemb = V.systemb;
		V.abort = LINK_ERROR_ABORT;
		break;
	}

	return(block);
}