#include "d232.h"
/*
 * EDAC 500-201 connector
 * pin 1 = 1A, pin 2 = 1B, PIN 3 = 2A ... PIN 50 = 25B
 */

extern A_data IO;
extern BPOT_type otto_b1;

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
	ADCC_StartConversion(channel_VSS);
	StartTimer(TMR_SPS, 10);
}

float lp_filter(float new, int16_t bn, int16_t slow) // low pass filter, slow rate of change for new, LPCHANC channels, slow/fast select (1) to zero channel
{
	float lp_speed, lp_x;
	static float smooth[8];

	if (bn > 7)
		return new;
	if (slow) {
		lp_speed = 0.01;
	} else {
		lp_speed = 0.250;
	}
	lp_x = ((smooth[bn]*100.0) + (((new * 100.0)-(smooth[bn]*100.0)) * lp_speed)) / 100.0;
	smooth[bn] = lp_x;
	if (slow == (-1)) { // reset and return zero
		lp_x = 0.0;
		smooth[bn] = 0.0;
	}
	return lp_x;
}

int16_t calc_pot(adc_result_t value)
{
	if (value < otto_b1.offset)
		value = otto_b1.offset;
	otto_b1.result = (adc_result_t) ((float) (value - otto_b1.offset) * otto_b1.scalar);
	otto_b1.result = ADC_SCALE_ZERO + otto_b1.result + (int8_t) lp_filter((float) IO.rnd, 0, true);
	return otto_b1.result;
}

bool Digital232_RW(void)
{
	uint8_t i = 0, j = 0;
	static uint8_t x = 0;


	if (!TimerDone(TMR_SPS)) {
		IO.io = IO_IDLE;
		return false;
	}

	StartTimer(TMR_SPS, 10 + IO.speed + IO.slower); // samples per second timer 10ms spacing at least

	ADCC_StartConversion(channel_ANA0);
	while (!ADCC_IsConversionDone());
	IO.button_value = ADCC_GetConversionResult();
	calc_pot(IO.button_value);

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

	UART2_Write('D');
	UART2_Write(IO.outbytes[4]); // port 5 first
	UART2_Write(IO.outbytes[3]);
	UART2_Write(IO.outbytes[2]);
	UART2_Write(IO.outbytes[1]);
	UART2_Write(IO.outbytes[0]);
	UART2_Write('\r');
	printf("%s", DRD);
	IO.output_ok = true;
	IO.io = IO_OUT;
	/*
	 * wait for data
	 */
	StartTimer(TMR_RXTO, RXTO_DELAY); // 250
	while (!UART2_is_rx_ready()) {
		if (TimerDone(TMR_RXTO)) {
			PWM8_LoadDutyValue(x++);
			if (x > 3)
				x = 0;
			IO.io = IO_FAIL;
			return false;
		}
	}

	/*
	 * read data
	 */
	i = 0;
	StartTimer(TMR_RXTO, RXTO_DELAY);
	while (!TimerDone(TMR_RXTO) && (i < 6)) {
		if (UART2_is_rx_ready()) {
			IO.inbytes[4 - i] = UART2_Read(); // port 5 first so count down
			i++;
		}
	}
	if (TimerDone(TMR_RXTO) || i < 6) {
		PWM8_LoadDutyValue(x++);
		if (x > 16)
			x = 0;
		IO.io = IO_FAIL;
		return false;
	}

	if (UART2_is_rx_ready())
		UART2_Read(); // eat data term char

	IO.input_ok = true;
	IO.io = IO_IN;
	IO.d232 = D232_OUT_IN;

	PWM8_LoadDutyValue(199);
	IO.io = IO_UPDATE;
	return true;
}

void led_lightshow(uint8_t seq, uint16_t speed)
{
	static uint16_t j = 0;
	static uint8_t cylon = 0xff;
	static int16_t alive_led = 0;
	static bool LED_UP = true;

	if (seq == DEBUG_SEQ) {
		IO.outbytes[2] = IO.inbytes[0];
		return;
	}

	if (seq == WIN_SEQ) {
		if (IO.sequence_done) {
			IO.sequence_done = false;
			StartTimer(TMR_SEQ, 30000);
		}
		IO.outbytes[2]++;
		return;
	}

	if (seq == CYLON) {
		if (j++ >= speed) { // delay a bit ok
			if (0) { // screen status feedback
				IO.outbytes[2] = ~cylon; // roll leds cylon style
			} else {
				IO.outbytes[2] = cylon; // roll leds cylon style (inverted)
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

	if (seq == LED_BAL) {

		if (otto_b1.result <= -120) {
			IO.outbytes[2] = 0b10000000;
			IO.BAL = UP;
		}
		if (otto_b1.result > -120 && otto_b1.result < -80) {
			IO.outbytes[2] = 0b01000000;
			IO.BAL = UP;
		}
		if (otto_b1.result >= -80 && otto_b1.result < -30) {
			IO.outbytes[2] = 0b00100000;
			IO.BAL = UP;
		}
		if (otto_b1.result >= -30 && otto_b1.result < -5) {
			if (IO.BAL != UP) {
				IO.outbytes[1] = IO.outbytes[1] | SIREN;
				IO.score--;
				StartTimer(TMR_BAL, 500);
			}
			IO.outbytes[2] = 0b00010000;
			IO.BAL = UP;
		}
		if (otto_b1.result >= -5 && otto_b1.result <= 5) {
			if (IO.BAL != ON) {
				IO.outbytes[1] = IO.outbytes[1] | CHIRP;

				if (TimerDone(TMR_BAL)) {
					if (IO.score < 50)
						IO.score++;
				}
				StartTimer(TMR_BAL, 500);
			}
			IO.outbytes[2] = 0b00000000;
			IO.BAL = ON;
		}
		if (otto_b1.result > 5 && otto_b1.result < 30) {
			if (IO.BAL != DOWN) {
				IO.outbytes[1] = IO.outbytes[1] | WARP;
				StartTimer(TMR_BAL, 500);
				IO.score--;
			}
			IO.outbytes[2] = 0b00001000;
			IO.BAL = DOWN;
		}
		if (otto_b1.result >= 30 && otto_b1.result < 80) {
			IO.outbytes[2] = 0b00000100;
			IO.BAL = DOWN;
		}
		if (otto_b1.result >= 80 && otto_b1.result < 120) {
			IO.outbytes[2] = 0b00000010;
			IO.BAL = DOWN;
		}
		if (otto_b1.result >= 120) {
			IO.outbytes[2] = 0b00000001;
			IO.BAL = DOWN;
		}
	}
}

bool once(bool *once_flag)
{
	if (*once_flag) {
		*once_flag = false;
		return true;

	} else {
		return false;
	}
}
