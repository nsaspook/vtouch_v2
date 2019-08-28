#ifndef TIMERS_H
#define TIMERS_H

#include <stdint.h>
#include <stdbool.h>

//Software timers - use these to refer to timers rather than
//integers.  Add more as needed.
//NOTE: 32767 ms max delay

enum APP_TIMERS {
	TMR_INTERNAL = 0, //Used in timers.c - do not remove or use elsewhere
	TMR_INIT,
	TMR_RXTO,
	TMR_SPS,
	TMR_EXTRA,
	//
	//(Add timers here as needed)
	//
	TMR_COUNT //number of timers - always keep at end of enum!
};

inline void StartTimer(uint8_t timer, uint16_t count);
inline bool TimerDone(uint8_t timer);
void WaitMs(uint16_t numMilliseconds);

#endif //TIMERS_H
