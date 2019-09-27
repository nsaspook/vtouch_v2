
/*
    Remote DAQ client example using sockets
 */
#include<stdio.h> //printf
#include<string.h>    //strlen
#include "tcpip/tcpip.h"
#include "tcpip/tcpip_helpers.h"
//#include "tcpip/berkeley_api.h"   //socket
//#include<arpa/inet.h> //inet_addr
#include "bmcnet.h"

char hostip[32] = "10.1.1.41";
int hostport = 9760;

uint16_t htons(uint16_t x)
{
#if BYTE_ORDER == BIG_ENDIAN
	return x;
#elif BYTE_ORDER == LITTLE_ENDIAN
	return __bswap_16(x);
#else
#error "What kind of system is this?"
#endif
}

uint32_t htonl(uint32_t x)
{
#if BYTE_ORDER == BIG_ENDIAN
	return x;
#elif BYTE_ORDER == LITTLE_ENDIAN
	return __bswap_32(x);
#else
#error "What kind of system is this?"
#endif
}

int bmc_client(char * net_message)
{
	int sock, n;
	struct sockaddr_in server;
	char message[1000], server_reply[2000];
	char MDB = 0; // debug stuff

	//Create socket
	sock = socket(AF_INET, SOCK_STREAM, IPPROTO_IP);
	if (sock == -1) {
		perror("Could not create socket");
		//		return 1;
	}

	memset(&server, 0, sizeof(server));

	server.sin_addr.s_addr = htonl((((((10 << 8) | 1) << 8) | 1) << 8) | 41);
	server.sin_family = AF_INET;
	server.sin_port = htons(hostport);

	//Connect to remote server
	if (connect(sock, (struct sockaddr *) &server, sizeof(server)) < 0) {
		perror("connect failed. Error");
		close(sock);
		return 2;
	}

	//Send some data
	if (send(sock, net_message, strlen(net_message), 0) < 0) {
		puts("Send failed");
		close(sock);
		return 3; // 
	}

	//Receive a reply from the server
	if ((n = recv(sock, server_reply, 2000, 0)) < 0) {
		puts("recv failed");
		close(sock);
		return 3; // 1
	}

	server_reply[n] = 0;
	if (MDB) {
		puts("Server reply :");
		puts(server_reply);
	}

	close(sock);
	return 0;
}
