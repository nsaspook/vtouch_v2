
/*
    Remote DAQ client example using sockets
 */
#include<stdio.h> //printf
#include<string.h>    //strlen
#include "tcpip/tcpip.h"
//#include "tcpip/berkeley_api.h"   //socket
//#include<arpa/inet.h> //inet_addr
#include "bmcnet.h"

char hostip[32] = "10.1.1.41";
int hostport = 9760;

int bmc_client(char * net_message)
{
	int sock, n;
	struct sockaddr_in server;
	char message[1000], server_reply[2000];
	char MDB = 0; // debug stuff

	//Create socket
	sock = socket(AF_INET, SOCK_STREAM, 0);
	if (sock == -1) {
		printf("Could not create socket");
	}

	//server.sin_addr.s_addr = inet_addr((char*) &hostip);
	server.sin_addr.s_addr = 687931658;
	server.sin_family = AF_INET;
	//server.sin_port = htons(hostport);
	server.sin_port = 8230;

	//Connect to remote server
	if (connect(sock, (struct sockaddr *) &server, sizeof(server)) < 0) {
		perror("connect failed. Error");
		return 1;
	}

	//Send some data
	if (send(sock, net_message, strlen(net_message), 0) < 0) {
		puts("Send failed");
		return 1;
	}

	//Receive a reply from the server
	if ((n = recv(sock, server_reply, 2000, 0)) < 0) {
		puts("recv failed");
		close(sock);
		return 1;
	}

	server_reply[n] = 0;
	if (MDB) {
		puts("Server reply :");
		puts(server_reply);
	}

	close(sock);
	return 0;
}
