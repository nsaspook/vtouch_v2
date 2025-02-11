#include "rs232.h"

static char line_status(adc_result_t);
extern struct V_data V;

void update_rs232_line_status(void)
{
	V.tx_rs232 = line_status(V.v_tx_line);
	V.rx_rs232 = line_status(V.v_rx_line);
}

char line_status(adc_result_t value)
{
	char status_c='O';
	
	return status_c;
}