#ifndef TIMERS_H
#define TIMERS_H

#include <stdint.h>
#include <stdbool.h>

//Software timers - use these to refer to timers rather than
//integers.  Add more as needed.
//NOTE: 32767 ms max delay

enum APP_TIMERS {
	TMR_INTERNAL = 0, //Used in timers.c - do not remove or use elsewhere
	TMR_ADC,
	TMR_T2,
	TMR_T3,
	TMR_T4,
	TMR_MC_TX,
	TMR_HBIO,
	TMR_INFO,
	TMR_HELP,
	TMR_HELPDIS,
	TMR_DISPLAY,
	TMR_FLIPPER,
	TMR_ESR,
	TMR_TEXT,
	//
	//(Add timers here as needed)
	//
	TMR_COUNT //number of timers - always keep at end of enum!
};

void StartTimer(const uint8_t timer, const uint16_t count);
bool TimerDone(const uint8_t timer);
void WaitMs(const uint16_t numMilliseconds);
void t5_isr(void);

#endif //TIMERS_H
