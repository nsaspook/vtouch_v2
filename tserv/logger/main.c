/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: root
 *
 * Created on April 16, 2020, 12:28 PM
 */
#define _DEFAULT_SOURCE
#include "tserv.h"

int serial_port, file_port;
struct termios tty;

/*
 * MBMC UNIX time server and data logger
 */
int main(int argc, char** argv)
{
	int t_set = false;
	char junk;

#ifdef __x86_64__ // for PC
	serial_port = open("/dev/ttyS0", O_RDWR);
#else // for RPi
	serial_port = open("/dev/ttyUSB0", O_RDWR);
#endif
	if (serial_port < 0) {
		printf("Port Error %i from open: %s\r\n", errno, strerror(errno));
		return errno;
	}
	memset(&tty, 0, sizeof tty); // clear

	// Read in existing settings, and handle any error
	if (tcgetattr(serial_port, &tty) != 0) {
		printf("TTY Error %i from tcgetattr: %s\r\n", errno, strerror(errno));
		return errno;
	}

	tty.c_cflag &= ~PARENB;
	tty.c_cflag &= ~CSTOPB;
	tty.c_cflag &= ~CSIZE;
	tty.c_cflag |= CS8;
	tty.c_cflag |= CREAD | CLOCAL;

	tty.c_lflag &= ~ICANON;
	tty.c_lflag &= ~ECHO;
	tty.c_lflag &= ~ECHOE;
	tty.c_lflag &= ~ECHONL;
	tty.c_lflag &= ~ISIG;
	tty.c_iflag &= ~(IXON | IXOFF | IXANY);
	tty.c_iflag &= ~(IGNBRK | BRKINT | PARMRK | ISTRIP | INLCR | IGNCR | ICRNL);

	tty.c_oflag &= ~OPOST;
	tty.c_oflag &= ~ONLCR;

	tty.c_cc[VTIME] = 10; // Wait for up to 1s, returning as soon as any data is received.
	tty.c_cc[VMIN] = 0;

	// Set in/out baud rate to be 115200
	cfsetispeed(&tty, B115200);
	cfsetospeed(&tty, B115200);

	// Save tty settings, also checking for error
	if (tcsetattr(serial_port, TCSANOW, &tty) != 0) {
		printf("TTY set Error %i from tcsetattr: %s\n", errno, strerror(errno));
		return errno;
	}
	// clear the receive buffer
	while (read(serial_port, &junk, 1));

	while (true) {
		if (t_set) {
			get_log(1);
		} else {
			t_set = get_log(0);
		}
	}
	close(serial_port);
	return(EXIT_SUCCESS);
}

