#include "hid.h"

H_data* hid_input(H_data* h)
{
	if (get_switch_bm(SSELECT)) {
		h->wait_select = false;
		h->select_p = get_switch_bm(SSELECT);
		clear_switch(SSELECT);
	}

	if (get_switch_bm(SENTER)) {
		h->wait_enter = false;
		h->enter_p = get_switch_bm(SENTER);
		clear_switch(SENTER);
	}

	if (get_switch_bm(SCALIB)) {
		h->wait_calib = false;
		h->calib_p = get_switch_bm(SCALIB);
		clear_switch(SCALIB);
	}
	return h;
}

H_data* hid_display(H_data* h)
{
	hid_input(h);

	switch (h->h_state) {
	case H_STATE_INIT:
		h->h_state = H_STATE_DISPLAY;
		h->hid_display = HID_MAIN;
		h->wait_enter = true;
		h->wait_select = true;
		h->wait_calib = true;
		h->select_p = SW_OFF;
		h->enter_p = SW_OFF;
		h->calib_p = SW_OFF;
		break;

	case H_STATE_DISPLAY:
	default:
		if (!h->wait_select && (h->select_p == SW_OFF)) {
			h->sequence = ++h->sequence & 0x3;
			if ((h->sequence == HID_AUX) && !get_switch(SCALIB))
				h->sequence = ++h->sequence & 0x3; // skip TRIM screen unless CALIB button is also pressed
			h->hid_display = h->sequence;
			h->wait_select = true;
		}
		break;
	}
	return h;
}

bool check_enter_button(H_data* h)
{
	if (!h->wait_enter && (h->enter_p == SW_OFF)) {
		h->wait_enter = true;
		return true;
	}
	return false;
}

bool check_calib_button(H_data* h)
{
	if (!h->wait_calib && (h->calib_p == SW_OFF)) {
		h->wait_calib = true;
		return true;
	}
	return false;
}

void clear_hid_pflags(H_data* h)
{
	h->select_p = SW_OFF;
	h->enter_p = SW_OFF;
	h->calib_p = SW_OFF;
}

void clear_hid_wflags(H_data* h)
{
	h->wait_enter = true;
	h->wait_select = true;
	h->wait_calib = true;
}