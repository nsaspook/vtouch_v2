#include "gemsecs.h"

extern struct V_data V;

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
	switch (*r_link) {
	case LINK_STATE_IDLE:
		break;
	case LINK_STATE_ENQ:
		break;
	case LINK_STATE_EOT:
		break;
	case LINK_STATE_ACK:
		break;
	case LINK_STATE_NAK:
		break;
	case LINK_STATE_ERROR:
	default:
		*r_link = LINK_STATE_IDLE;
		break;
	}

	return *r_link;
}

LINK_STATES t_protocol(LINK_STATES *t_link)
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
		break;
	case LINK_STATE_ERROR:
	default:
		*t_link = LINK_STATE_IDLE;
		break;
	}

	return *t_link;
}
