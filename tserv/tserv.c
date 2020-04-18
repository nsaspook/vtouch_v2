// C library headers
#define _DEFAULT_SOURCE
#include "logger/tserv.h"

extern int serial_port, file_port;

/*
 * read from the serial port, check for time T command and log data to storage file
 */
int get_log(int mode)
{
	char read_buf[256], msg[256];
	int num_bytes, rcode = 0;

	num_bytes = read(serial_port, &read_buf[0], sizeof(read_buf));
	if (num_bytes < 0) {
		printf("Error reading: %s\r\n", strerror(errno));
		return errno;
	}

	file_port = open(LOG_FILE, O_RDWR | O_APPEND);
	if (file_port < 0) {
		printf("File Error %i from open: %s\r\n", errno, strerror(errno));
		return errno;
	} else {
		if (num_bytes) {
			printf("Read %i bytes. Received message: %c\r\n", num_bytes, read_buf[0]);
			if (read_buf[0] == 'T') { // process the T server time command
				int k = 0;
				// Write to serial port
				sprintf(msg, "T%lut", time(0)); // format UNIX time in ASCII
				do {
					write(serial_port, &msg[k], 1); // use gaps between bytes for slow controller time processing
					usleep(1000);
				} while (k++ < strlen(msg));

				printf("Send time %s\r\n", msg);
				rcode = 1;
			} else { // just write the serial buffer to the log file
				write(file_port, &read_buf[0], num_bytes);
			}
		}

		close(file_port);
	}
	return rcode;
}
