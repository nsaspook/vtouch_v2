#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include "vconfig.h"
#include "timers.h"

extern volatile uint16_t tickCount[TMR_COUNT];

//**********************************************************************************************************************
// Start one of the software timers

void StartTimer(const uint8_t timer, const uint16_t count)
{
	tickCount[timer] = count << 1; //Interrupt is every 500us but StartTimer() takes multiple of 1ms so multiply by 2
}

//**********************************************************************************************************************
// Check if one of the software software timers has timed out

bool TimerDone(const uint8_t timer)
{
	bool ret = false;
	ClrWdt(); // reset the WDT timer
	if (tickCount[timer] == (uint16_t)0) { //Check if counted down to zero
		ret = true; //then return true
	}
	return ret; //return status
}

//**********************************************************************************************************************
// Simple delay for n milliseconds (blocking)

void WaitMs(const uint16_t numMilliseconds)
{
	StartTimer(TMR_INTERNAL, numMilliseconds); //Start software timer and wait for it to count down
	while (!TimerDone(TMR_INTERNAL)) {
		Nop();
		Nop();
		Nop();
		Nop();
		ClrWdt(); // reset the WDT timer
		//		Idle();
	} //Enter idle mode to reduce power while waiting
} //(timer interrupt will wake part from idle)

