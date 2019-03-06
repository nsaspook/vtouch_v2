#include "gemsecs.h"

extern struct V_data V;
extern header10 r_block;
extern struct header10 H10[];

/*
 * Checksum for message and header block after length byte
 */
uint16_t block_checkmark(uint8_t *byte_block, uint16_t byte_count)
{
	uint16_t sum = 0, i;

	for (i = 0; i < byte_count; i++) {
		sum += byte_block[i];
	}
	return sum;
}

LINK_STATES r_protocol(LINK_STATES *r_link)
{
	uint8_t rxData;
	static uint8_t rxData_l = 0;

	switch (*r_link) {
	case LINK_STATE_IDLE:
		if (UART1_is_rx_ready()) {
			rxData = UART1_Read();
			if (rxData == ENQ) {
				*r_link = LINK_STATE_ENQ;
			}
		}
		break;
	case LINK_STATE_ENQ:
		rxData_l = 0;
		UART1_Write(EOT);
		StartTimer(TMR_T2, 1000);
		*r_link = LINK_STATE_EOT;
		break;
	case LINK_STATE_EOT:
		if (TimerDone(TMR_T2)) {
			*r_link = LINK_STATE_NAK;
		} else {
			if (UART1_is_rx_ready()) {
				rxData = UART1_Read();
				if (rxData_l == 0) { // start header reads
					r_block.length = rxData; // header+message bytes
					rxData_l++;
				} else {
					if (rxData_l >= (r_block.length + 2)) { // + checksum bytes
						*r_link = LINK_STATE_ACK;
					}
					if (rxData_l <= 10) // save header only
						H10[1].block.b[r_block.length - rxData_l] = rxData;
					rxData_l++;
				}
			}
		}
		break;
	case LINK_STATE_ACK:
		V.stream = H10[1].block.block.stream;
		V.function = H10[1].block.block.function;
		UART1_Write(ACK);
		*r_link = LINK_STATE_DONE;
		break;
	case LINK_STATE_NAK:
		UART1_Write(NAK);
		*r_link = LINK_STATE_ERROR;
		while (UART1_DataReady) { // dump the receive buffer
			UART1_Read();
		}
		break;
	case LINK_STATE_ERROR:
		break;
	case LINK_STATE_DONE:
	default:
		*r_link = LINK_STATE_IDLE;
		break;
	}

	return *r_link;
}

LINK_STATES t_protocol(LINK_STATES * t_link)
{
	switch (*t_link) {
	case LINK_STATE_IDLE:
		break;
	case LINK_STATE_ENQ:
		break;
	case LINK_STATE_EOT:
		break;
	case LINK_STATE_ACK:
		break;
	case LINK_STATE_NAK:
		UART1_Write(NAK);
		*t_link = LINK_STATE_ERROR;
		while (UART1_DataReady) { // dump the receive buffer
			UART1_Read();
		}
		break;
	case LINK_STATE_ERROR:
		break;
	case LINK_STATE_DONE:
	default:
		*t_link = LINK_STATE_IDLE;
		break;
	}

	return *t_link;
}
