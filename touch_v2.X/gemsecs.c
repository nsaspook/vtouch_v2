/*
 Tcl code for secs  secs-0.2.0.tm
 */
#include "gemsecs.h"

/*
 checksum generation
 
 ::set sum 0
				binary scan $msg1 c* x
				::foreach e $x {
					incr sum [expr {$e&255}]
				}
 */

/*
 * checksum checking
 * load sum with received checksum value and subtract to zero
 
 
 binary scan [string range $data $n-2 $n-1] S sum
				binary scan [string range $data 1 10] c* x
				::foreach e $x {
					incr sum [expr {-($e&255)}]
				}
				::set result [string range $data 11 $n-3]
				binary scan $result c* x
				::foreach e $x {
					incr sum [expr {-($e&255)}]
				}
 */

uint16_t block_checkmark(uint8_t *byte_block, uint16_t byte_count)
{
	uint16_t sum = 0, i;

	for (i = 0; i < byte_count; i++) {
		sum += byte_block[i];
	}
	return sum;
}