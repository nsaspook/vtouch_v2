#include "speed.h"

/*
 * return controller clock speed
 */
uint16_t get_fosc(void)
{
	while (!TMR1GIF); // wait unit the count gate is done. init_get_fosc must be executed first
	return TMR1_ReadTimer(); // return the number of counts for the period set by timer0
}

/*
 * configure timer 0 and 1 for processor timing duty
 * must be called first before using get_fosc()
 */
void init_get_fosc(void)
{
	TMR1GIF = 0; // clear gate interrupt flag
	TMR1_WriteTimer(0); // zero counter date
	/*
	 * trigger the count gate using the output of timer0 for one cycle, one shot
	 */
	TMR1_StartSinglePulseAcquisition(); // Starts the single pulse acquisition in TMR1 gate operation.
}
