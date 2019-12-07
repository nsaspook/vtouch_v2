#include "bsoc.h"
#include "mcc_generated_files/interrupt_manager.h"

extern C_data C;
extern V_data V;

const uint32_t BVSOC_TABLE[BVSOC_SLOTS][2] = {
	23000, 5,
	23400, 10,
	23600, 20,
	24120, 25,
	24200, 30,
	24440, 40,
	24540, 45,
	24600, 50,
	24646, 53,
	24700, 55,
	24750, 57,
	12400 * 2, 60,
	12425 * 2, 63,
	12475 * 2, 67,
	12500 * 2, 70,
	12510 * 2, 72,
	12520 * 2, 75,
	12525 * 2, 80,
	12530 * 2, 85,
	12540 * 2, 90,
	12548 * 2, 92,
	12561 * 2, 93,
	12570 * 2, 95,
	12580 * 2, 97,
	12590 * 2, 100,
	13100 * 2, 90
};

void calc_bsoc(void)
{
	uint8_t * log_ptr;
	uint16_t temp;
#ifdef DEBUG_BSOC1
	DEBUG1_SetHigh();
#endif
	C.dynamic_ah += (C.c_bat / SSLICE); // Ah
	if (C.dynamic_ah > (C.bank_ah))
		C.dynamic_ah = C.bank_ah;
	if (C.dynamic_ah < 0.1)
		C.dynamic_ah = 0.1;

	C.pv_ah += (C.c_pv / SSLICE);
	C.pvkw += (C.p_pv / SSLICE);
	C.invkw += (C.p_inverter / SSLICE);
	if (C.p_bat > 0.0)
		C.bkwi += (C.p_bat / SSLICE);
	if (C.p_bat < 0.0)
		C.bkwo += (C.p_bat / SSLICE);

	temp = ((uint16_t) ((C.dynamic_ah / C.bank_ah)*100.0) + 1);
	C.soc = (Volts_to_SOC((uint32_t) C.v_bat * 1000.0) + temp) / 2;
	if (C.soc > 100)
		C.soc = 100;

	if (C.c_bat < 0.0) {
		C.runtime = (uint16_t) (-(C.dynamic_ah / C.c_bat));
	} else {
		C.runtime = 120;
	}
	if (C.runtime > 120)
		C.runtime = 120;

	V.lowint_count++;
	log_ptr = port_data_dma_ptr();
	sprintf((char*) log_ptr, " %4.3f,%4.3f,%4.3f,%4.3f,%4.3f,%4.3f,%4.3f,%4.3f,%4.3f,%4.3f,%4.3d,%4.3d\r\n",
		C.v_bat, C.v_pv, C.v_cc, C.v_inverter,
		C.p_bat, C.p_pv, C.p_load, C.p_inverter,
		C.dynamic_ah, C.pv_ah, C.soc, C.runtime);
	send_port_data_dma(strlen((char*) log_ptr));
	C.update = false;
#ifdef DEBUG_BSOC1
	DEBUG1_SetLow();
#endif
}

void init_bsoc(void)
{
	/*
	 * use raw battery voltage
	 */
	C.soc = Volts_to_SOC((uint32_t) conv_raw_result(V_BAT, CONV) * 1000.0);
	C.dynamic_ah = C.bank_ah * (C.soc / 100.0);
	TMR3_SetInterruptHandler(calc_bsoc);
}

void start_bsoc(void)
{
	// Enabling TMR3 interrupt.
	PIE6bits.TMR3IE = 1;
#ifdef DEBUG_BSOC2
	DEBUG2_Toggle();
#endif
}

void stop_bsoc(void)
{
	// Disabling TMR3 interrupt.
	PIE6bits.TMR3IE = 0;
}

void reset_bsoc(R_CODES rmode)
{
	switch (rmode) {
	default:
		C.pv_ah = 0.0;
		break;
	}
}

/* Current is in 0.1A units */
uint32_t peukert(uint16_t brate, float bcurrent, float peukert, int16_t bsoc)
{
	float t1, t2, t3, t4, t5, t6, t7, t_time;

	t1 = (float) bcurrent; // Load on battery in 0.1A units
	t1 /= 10.0; // convert back to A
	if (t1 < 1.0) t1 = 1.0; // inverter current floor is 1.0 amp
	t2 = (float) brate; // Battery capacity in 1.0A units
	t3 = (float) ((float) bsoc / 100.0); // State of Charge
	if (t3 > 0.0) t2 = t2 * t3; // only decrease battery Ah
	if (t2 < 1.0) t2 = 1.0; // Ah floor is 1.0
	t4 = t2 * (float) (pow((t2 / (float) 20.0), ((float) peukert - (float) 1.0)));
	t_time = pow((t2 / (float) 20.0), peukert); // factor at 20h rate
	t5 = pow(t1, peukert); // factor at load current rate
	t6 = t4 / t5; // runtime in hours at the current draw
	if (t6 > MAXRUNTIME) t6 = MAXRUNTIME; // max time is 4 days in hours
	if (t6 < MINRUNTIME) t6 = MINRUNTIME;
	t7 = t4 / t_time; // time at fixed 20h rate

	C.hist[0].peukert_adj = t7 / t6; // Peukert factor to resize Ah usage, t7=runtime at the 20h current rate/t6=runtime at the inverter load current value
	if (C.hist[0].peukert_adj < Perk_ADJ_FL)
		C.hist[0].peukert_adj = Perk_ADJ_FL; // limit how LOW
	if (C.hist[0].peukert_adj > Perk_ADJ_FH)
		C.hist[0].peukert_adj = Perk_ADJ_FH; // limit how HIGH

	t6 = t6 * 3600.0; // convert to seconds for runtime at current discharge rate
	return(uint32_t) t6;
}

uint16_t Volts_to_SOC(uint32_t cvoltage)
{
	static uint8_t slot;

	C.soc = 0;
	for (slot = 0; slot < BVSOC_SLOTS; slot++) {
		if (cvoltage > BVSOC_TABLE[slot][0]) {
			C.soc = BVSOC_TABLE[slot][1];
		}
	}

	return C.soc;
}