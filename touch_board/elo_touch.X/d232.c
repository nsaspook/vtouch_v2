#include "d232.h"
/*
 * EDAC 500-201 connector
 * pin 1 = 1A, pin 2 = 1B, PIN 3 = 2A ... PIN 50 = 25B
 */

extern volatile A_data IO;

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
	IO.d232 = D232_INIT;
	/*
	 * empty receiver buffer
	 */
	if (UART2_is_rx_ready())
		UART2_Read();
	IO.io = IO_INIT;
	IO.srq = S_IDLE;
	IO.srq_value = 0;
	IO.button_value = 0;
	ADCC_StartConversion(channel_ANA0);
}

bool Digital232_RW(void)
{
	uint8_t i = 0, j = 0;
	static uint8_t x = 0;
	/*
	 * empty receiver buffer
	 */
	IO.srq = S_IDLE;

	if (UART2_is_rx_ready()) {
		j = UART2_Read();
		/*
		 * looks for 'SRQ n' embedded in the data
		 */
		switch (IO.srq) {
		case S_IDLE:
			if (j == 'S')
				IO.srq = S_S;
			break;
		case S_S:
			if (j == 'R')
				IO.srq = S_R;
			break;
		case S_R:
			if (j == 'Q')
				IO.srq = S_Q;
			break;
		case S_Q:
			if (j == ' ')
				IO.srq = S_NUM;
			break;
		case S_NUM:
			IO.srq_value = j;
			IO.srq = S_UPDATE;
			break;
		default:
			IO.srq = S_IDLE;
		}
	}

	WaitMs(10);
	UART2_Write('D');
	UART2_Write(IO.outbytes[0]);
	UART2_Write(IO.outbytes[1]);
	UART2_Write(IO.outbytes[2]);
	UART2_Write(IO.outbytes[3]);
	UART2_Write(IO.outbytes[4]);
	UART2_Write('\r');
	WaitMs(5);
	printf("%s", DRD);
	IO.output_ok = true;
	IO.io = IO_OUT;
	/*
	 * wait for data
	 */
	StartTimer(TMR_RXTO, 250);
	while (!UART2_is_rx_ready()) {
		if (TimerDone(TMR_RXTO)) {
			PWM8_LoadDutyValue(x++);
			if (x > 3)
				x = 0;
			return false;
		}
	}

	/*
	 * read data
	 */
	StartTimer(TMR_RXTO, 250);
	while (!TimerDone(TMR_RXTO) && (i < 6)) {
		if (UART2_is_rx_ready()) {
			IO.inbytes[i] = UART2_Read();
			i++;
		}
	}
	if (TimerDone(TMR_RXTO) || i < 6) {
		PWM8_LoadDutyValue(x++);
		if (x > 16)
			x = 0;
		return false;
	}

	IO.input_ok = true;
	IO.io = IO_IN;
	IO.d232 = D232_OUT_IN;

	//	ADCC_StartConversion(channel_ANA0);
	//	while (!ADCC_IsConversionDone());
	IO.button_value = ADCC_GetConversionResult();
	PWM8_LoadDutyValue(199);
	return true;
}

void led_lightshow(uint8_t seq, uint32_t speed)
{
	static uint32_t j = 0;
	static uint8_t cylon = 0xff;
	static int32_t alive_led = 0;
	static bool LED_UP = true;

	if (j++ >= speed) { // delay a bit ok
		if (0) { // screen status feedback
			IO.outbytes[1] = ~cylon; // roll leds cylon style
		} else {
			IO.outbytes[1] = cylon; // roll leds cylon style (inverted)
		}

		if (LED_UP && (alive_led != 0)) {
			alive_led = alive_led * 2;
			cylon = cylon << 1;
		} else {
			if (alive_led != 0) alive_led = alive_led / 2;
			cylon = cylon >> 1;
		}
		if (alive_led < 2) {
			alive_led = 2;
			LED_UP = true;
		} else {
			if (alive_led > 128) {
				alive_led = 128;
				LED_UP = false;
			}
		}
		j = 0;
	}
}
