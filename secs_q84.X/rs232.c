#include "rs232.h"

static char line_status(const adc_result_t);
extern struct V_data V;

/*
 * convert the raw ADC result into something close to the RS-232 wire voltages
 */
void update_rs232_line_status(void)
{
	V.tx_rs232 = line_status(V.v_tx_line);
	V.rx_rs232 = line_status(V.v_rx_line);

	V.tx_volts = (adc_scale_zero + (int16_t) V.v_tx_line) / neg_scale; // negative scaling
	if (V.tx_volts > 0) {
		V.tx_volts = (adc_scale_zero + (int16_t) V.v_tx_line) / pos_scale; // positive scaling
	} else {
		if (V.tx_volts < line_zero_limit) { // check for ADC disconnect condition
			V.tx_volts = 0;
		}
	}

	V.rx_volts = (adc_scale_zero + (int16_t) V.v_rx_line) / neg_scale;
	if (V.rx_volts > 0) {
		V.rx_volts = (adc_scale_zero + (int16_t) V.v_rx_line) / pos_scale;
	} else {
		if (V.rx_volts < line_zero_limit) {
			V.rx_volts = 0;
		}
	}

}

/*
 * convert raw ADC values tto RS232 line status indicators
 * D: Disconnected from anyload (device measurements error)
 * O: Open, Line receiver connected only voltage
 * M: Mark line condition
 * S: Space line condition
 * 
 */
static char line_status(const adc_result_t value)
{
	char status_c = 'D';

	if ((value < (LINE_OPEN_V - LINE_LIMIT_OPEN)) && (value > (LINE_RECV_V - LINE_LIMIT_OPEN))) {
		status_c = 'O';
	}

	if ((value > (LINE_OPEN_V + LINE_LIMIT_LOW)) && (value < (LINE_SPACE_V + LINE_LIMIT_H))) {
		status_c = 'S';
	}

	if ((value < (LINE_OPEN_V - LINE_LIMIT_MARK)) && (value > (LINE_MARK_V - LINE_LIMIT_H))) {
		status_c = 'M';
	}

	return status_c;
}