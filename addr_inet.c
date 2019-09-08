#define _BSD_SOURCE
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>

int
main(int argc, char *argv[])
{


   printf("%X\n", inet_addr("10.1.1.41"));
 printf("%X\n", htons(9760));
    exit(EXIT_SUCCESS);
}
