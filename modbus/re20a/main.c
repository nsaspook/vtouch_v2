#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <modbus/modbus.h>

const int EXCEPTION_RC = 2;

enum {
	TCP, TCP_PI, RTU
};

#define SERVER_ID 1

int main(int argc, char *argv[])
{
	modbus_t *ctx = NULL;
	uint16_t *tab_rp_bits = NULL;
	uint32_t old_response_to_sec;
	uint32_t old_response_to_usec;
	int rc;
	int server_id = SERVER_ID;

	// UPDATE THE DEVICE NAME AS NECESSARY
	ctx = modbus_new_rtu("/dev/ttyS0", 9600, 'N', 8, 1);
	if (ctx == NULL) {
		fprintf(stderr, "Could not connect to MODBUS: %s\n", modbus_strerror(errno));
		return -1;
	}

	printf("Setting slave_id %d\n", server_id);
	fflush(stdout);
	rc = modbus_set_slave(ctx, server_id);
	if (rc == -1) {
		fprintf(stderr, "server_id=%d Invalid slave ID: %s\n", server_id, modbus_strerror(errno));
		modbus_free(ctx);
		return -1;
	}
	modbus_set_debug(ctx, TRUE);
	// Not needed for USB-RS485 adapters
	// See: https://github.com/stephane/libmodbus/issues/316
	rc = modbus_rtu_set_rts(ctx, MODBUS_RTU_RTS_UP);
	if (rc == -1) {
		fprintf(stderr, "server_id=%d Failed to set serial mode: %s\n", server_id, modbus_strerror(errno));
		modbus_free(ctx);
		return -1;
	}
	modbus_set_error_recovery(ctx, MODBUS_ERROR_RECOVERY_LINK | MODBUS_ERROR_RECOVERY_PROTOCOL);

	modbus_get_response_timeout(ctx, &old_response_to_sec, &old_response_to_usec);
	if (modbus_connect(ctx) == -1) {
		fprintf(stderr, "Connection failed: %s\n", modbus_strerror(errno));
		modbus_free(ctx);
		return -1;
	}
	printf("timeout values sec %d, usec %d\n", old_response_to_sec, old_response_to_usec);

	tab_rp_bits = (uint16_t *) malloc(2 * sizeof(uint16_t));
	memset(tab_rp_bits, 0, 2 * sizeof(uint16_t));

	while (TRUE) {
		/*
		 * get charging state
		 */
		rc = modbus_read_registers(ctx, 0x120, 0x1, tab_rp_bits);
		if (rc == -1) {
			fprintf(stderr, "Failed to modbus_read_input_registers: %s\n", modbus_strerror(errno));
			/* modbus_free(ctx);
			return -1; */
		}

		printf("server_id=%d rc=%d Charge Controller mode=%x \n", rc, server_id, tab_rp_bits[0]);
		sleep(1);
	}

	/* Free the memory */
	free(tab_rp_bits);
	// free(tab_rp_registers);

	/* Close the connection */
	modbus_close(ctx);
	modbus_free(ctx);

	return 0;
}
