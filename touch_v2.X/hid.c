#include "hid.h"

H_data* hid_input(H_data* h)
{
	if (get_switch(SSELECT)) {
		h->wait_select = false;
		h->select_p = get_switch(SSELECT);
	}

	if (get_switch(SENTER)) {
		h->wait_enter = false;
		h->enter_p = get_switch(SENTER);
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
		break;
	default:
	case H_STATE_DISPLAY:
		if (h->select_p) {
			h->hid_display = HID_PWR;
		} else {
			h->hid_display = HID_MAIN;
		}
		break;
	}
	return h;
}

void clear_hid_pflags(H_data* h)
{
	h->select_p=SW_OFF;
	h->enter_p=SW_OFF;
}

void clear_hid_wflags(H_data* h)
{
	h->wait_enter=true;
	h->wait_select=true;
}