


#include "gemsecs.h"

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