#include "d232.h"

A_data IO;

void Digital232_init(void)
{
	printf("%s", RST);
	WaitMs(5);
	printf("%s", DTEST);
	WaitMs(800);
	printf("%s", CNF);
	WaitMs(5);
	printf("%s", FMT);
	WaitMs(5);
	printf("%s", SRQ);
	WaitMs(5);
}

bool Digital232_RW(void)
{
	WaitMs(10);
	IO.outbytes[0]++;
	IO.outbytes[1] = 0;
	IO.outbytes[2] = 1;
	IO.outbytes[3] = 0;
	IO.outbytes[4]--;
	UART2_Write('D');
	UART2_Write(IO.outbytes[0]);
	UART2_Write(IO.outbytes[1]);
	UART2_Write(IO.outbytes[2]);
	UART2_Write(IO.outbytes[3]);
	UART2_Write(IO.outbytes[4]);
	UART2_Write('\r');
	WaitMs(5);
	printf("%s", DRD);
	/*
	 * wait for data
	 */
	StartTimer(TMR_RXTO, 1000);
	while (!TimerDone(TMR_RXTO) && !UART2_is_rx_ready()) {
	}
	if (TimerDone(TMR_RXTO))
		return false;

	/*
	 * read data
	 */
	StartTimer(TMR_RXTO, 1000);
	while (!TimerDone(TMR_RXTO) && UART2_is_rx_ready()) {
		UART2_Read();
	}
	if (TimerDone(TMR_RXTO))
		return false;

	return true;
}
