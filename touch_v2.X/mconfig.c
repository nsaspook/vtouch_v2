#include "mconfig.h"
#include "mydisplay.h"

extern V_data V;

V_help T[] = {
	{
		.message = "commands 1",
		.display = "displays 1",
	},
	{
		.message = "commands 2",
		.display = "displays 2",
	},
	{
		.message = "commands 3",
		.display = "displays 3",
	},
	{
		.message = "commands 4",
		.display = "displays 4",
	},
};

const char *build_date = __DATE__, *build_time = __TIME__;

/*
 * hardware specific routines
 */
void mode_lamp_dim(const uint16_t level)
{
	PWM8_LoadDutyValue(level);
}

void mode_lamp_bright(void)
{
	PWM8_LoadDutyValue(300);
}

/*
 * mode button help mode select
 */
bool help_button(void)
{
	if (!RB0_GetValue()) { // debounce and delay for button press
		V.help = true;
		if (TimerDone(TMR_HELP))
			return true;
	}

	if (!V.help)
		StartTimer(TMR_HELP, BDELAY);

	return false;
}

void check_help(void)
{
	/*
	 * show help display
	 */
	if (help_button() && display_info() != DIS_HELP) {
		set_temp_display_help(display_info());
		set_display_info(DIS_HELP);
		sprintf(V.info, "%s              ", T[V.help_id].message);
		V.help_id++; // cycle help text messages to LCD
		StartTimer(TMR_HELPDIS, TDELAY);
		StartTimer(TMR_INFO, TDELAY);
		mode_lamp_bright(); // mode switch indicator lamp 'button' level
	} else {
		if (TimerDone(TMR_HELPDIS)) {
			V.help = false;
			set_display_info(display_help());
			mode_lamp_dim(V.mode_pwm);
		}

	}
}

void update_lcd(uint8_t vterm)
{
	vterm = vterm & 0x01;
	eaDogM_WriteStringAtPos(0, 0, V.lcd[vterm][0]);
	eaDogM_WriteStringAtPos(1, 0, V.lcd[vterm][1]);
	eaDogM_WriteStringAtPos(2, 0, V.lcd[vterm][2]);
}

void MyeaDogM_WriteStringAtPos(const uint8_t r, const uint8_t c, char *strPtr)
{
	static D_CODES last_info;

	//	DLED = true;
	wait_lcd_done();
	if (V.response.info == DIS_STR) {
		eaDogM_WriteStringAtPos(r, c, strPtr);
	} else {
		switch (V.response.info) {
		case DIS_LOG:
			sprintf(V.buf, " S%dF%d log    %d    ", V.stream, V.function, V.response.log_seq & 0x03);
			V.buf[16] = 0;
			eaDogM_WriteStringAtPos(0, 0, V.buf);
			sprintf(V.buf, " Stored #%d        ", V.response.log_num);
			V.buf[16] = 0;
			wait_lcd_done();
			eaDogM_WriteStringAtPos(1, 0, V.buf);
			break;
		case DIS_LOAD:
			sprintf(V.buf, " Ready LL        ");
			V.buf[16] = 0;
			eaDogM_WriteStringAtPos(0, 0, V.buf);
			sprintf(V.buf, " S2F41 #%c         ", V.response.mcode);
			V.buf[16] = 0;
			wait_lcd_done();
			eaDogM_WriteStringAtPos(1, 0, V.buf);
			break;
		case DIS_PUMP:
			sprintf(V.buf, " Pump LL         ");
			V.buf[16] = 0;
			eaDogM_WriteStringAtPos(0, 0, V.buf);
			sprintf(V.buf, " S2F41 #%c         ", V.response.mcode);
			V.buf[16] = 0;
			wait_lcd_done();
			eaDogM_WriteStringAtPos(1, 0, V.buf);
			break;
		case DIS_UNLOAD:
			sprintf(V.buf, " Open LL         ");
			V.buf[16] = 0;
			eaDogM_WriteStringAtPos(0, 0, V.buf);
			sprintf(V.buf, " S2F41 #%c         ", V.response.mcode);
			V.buf[16] = 0;
			wait_lcd_done();
			eaDogM_WriteStringAtPos(1, 0, V.buf);
			break;
		case DIS_HELP:
			wdtdelay(9000); // slowdown updates for SPI transfers
			sprintf(V.buf, "HELP %s           ", build_date);
			V.buf[16] = 0;
			eaDogM_WriteStringAtPos(0, 0, V.buf);
			sprintf(V.buf, "DISPLAY %s        ", build_time);
			V.buf[16] = 0;
			wait_lcd_done();
			eaDogM_WriteStringAtPos(1, 0, V.buf);
			break;
		case DIS_SEQUENCE:
			wdtdelay(9000); // slowdown updates for SPI transfers
			sprintf(V.buf, " Load-lock%d R%d      ", V.llid, V.msg_error);
			V.buf[16] = 0;
			eaDogM_WriteStringAtPos(0, 0, V.buf);
			sprintf(V.buf, " SEQUENCE %d        ", V.sequences);
			V.buf[16] = 0;
			wait_lcd_done();
			eaDogM_WriteStringAtPos(1, 0, V.buf);
			break;
		case DIS_TERM:
			sprintf(V.buf, " Terminal %d             ", V.response.TID);
			V.buf[16] = 0;
			eaDogM_WriteStringAtPos(0, 0, V.buf);
			sprintf(V.buf, " CMD %c %c Len %d       ", V.response.mcode, V.response.mparm, V.response.cmdlen);
			V.buf[16] = 0;
			wait_lcd_done();
			eaDogM_WriteStringAtPos(1, 0, V.buf);
			break;
		default:
			sprintf(V.buf, "                  ");
			V.buf[16] = 0;
			eaDogM_WriteStringAtPos(0, 0, V.buf);
			sprintf(V.buf, "                  ");
			V.buf[16] = 0;
			wait_lcd_done();
			eaDogM_WriteStringAtPos(1, 0, V.buf);
			break;
		}
		sprintf(V.buf, "%s", V.info);
		V.buf[16] = 0;
		wait_lcd_done();
		eaDogM_WriteStringAtPos(2, 0, V.buf);
		if (TimerDone(TMR_INFO))
			V.response.info = DIS_STR;
	}

	/*
	 * this is for possible message flipping with the HELP button
	 */
	if (last_info == DIS_HELP && V.response.info != DIS_HELP) {
		// show some stuff, maybe
		sprintf(V.buf, "%s              ", T[V.help_id].display);
		V.buf[16] = 0;
		eaDogM_WriteStringAtPos(0, 0, V.buf);
	}

	last_info = V.response.info;
	//	DLED = false;
}

inline D_CODES display_info(void)
{
	return V.response.info;
}

inline D_CODES display_help(void)
{
	return V.response.help_temp;
}

D_CODES set_display_info(const D_CODES new_response_info)
{
	static D_CODES old_info;

	old_info = V.response.info;
	V.response.info = new_response_info;
	return old_info;
}

D_CODES set_temp_display_help(const D_CODES new_response_info)
{
	static D_CODES old_info;

	old_info = V.response.help_temp;
	V.response.help_temp = new_response_info;
	return old_info;
}
