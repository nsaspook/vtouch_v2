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
	24800, 60,
	24850, 63,
	24925, 67,
	25000, 70,
	25020, 72,
	25040, 75,
	25050, 80,
	25060, 85,
	25080, 90,
	25096, 92,
	25122, 93,
	25140, 95,
	25160, 97,
	25180, 100,
	26500, 98 // charging voltage guess
};

/*
 * low-pri interrupt ISR the runs every second for simple coulomb counting
 */
void calc_bsoc(void)
{
	uint8_t * log_ptr;
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
	C.loadkw += (C.p_load / SSLICE);
	if (C.p_bat > 0.0)
		C.bkwi += (C.p_bat / SSLICE);
	if (C.p_bat < 0.0)
		C.bkwo += (C.p_bat / SSLICE);

	C.soc = ((uint16_t) ((C.dynamic_ah / C.bank_ah)*100.0) + 1);
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
	sprintf((char*) log_ptr, " %lu,%4.4f,%4.4f,%4.4f,%4.4f,%4.3f,%4.3f,%4.3f,%4.3f,%4.3f,%4.3f,%4.3d,%4.3d,%2.6f\r\n",
		V.ticks,
		C.v_bat, C.v_pv, C.v_cc, C.v_inverter,
		C.p_bat, C.p_pv, C.p_load, C.p_inverter,
		C.dynamic_ah, C.pv_ah, C.soc, C.runtime,
		C.esr);
	StartTimer(TMR_DISPLAY, SOCDELAY); // sync the spi dma display updates
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

/*
 * check battery ESR, returns ESR value when done and -1.0 when in FSM sequence (fsm set to true will init the state machine)
 */
float esr_check(uint8_t fsm)
{
	static uint8_t esr_state = 0;
	float esr_value = -1.0;

	if (fsm) {
		esr_state = 0;
		esr_value = -10.0;
		return esr_value;
	}

	switch (esr_state) {
	case 0:
		StartTimer(TMR_ESR, 10000);
		esr_state++;
		esr_value = -1.0;
		break;
	case 1:
		set_load_relay_one(false);
		set_load_relay_two(false);
		if (TimerDone(TMR_ESR)) {
			StartTimer(TMR_ESR, 10000);
		} else {
			return -2.0;
		}

		update_adc_result();
		C.bv_noload = conv_raw_result(V_BAT, CONV);
		esr_state++;
		break;
	case 2:
		set_load_relay_one(true);
		if (TimerDone(TMR_ESR)) {
			StartTimer(TMR_ESR, 10000);
		} else {
			return -3.0;
		}

		update_adc_result();
		C.bv_one_load = conv_raw_result(V_BAT, CONV);
		C.load_i1 = conv_raw_result(C_BATT, CONV); // get current
		esr_state++;
		break;
	case 3:
		set_load_relay_two(true);
		if (!TimerDone(TMR_ESR))
			return -4.0;

		update_adc_result();
		C.bv_full_load = conv_raw_result(V_BAT, CONV);
		C.load_i2 = conv_raw_result(C_BATT, CONV); // get current

		C.esr = fabs((C.bv_one_load - C.bv_full_load) / (C.load_i1 - C.load_i2)); // find internal resistance causing voltage drop (sorta)
		set_load_relay_one(false);
		set_load_relay_two(false);
		esr_state = 0;
		return C.esr;
		break;
	default:
		break;
	}
	return esr_value;
}