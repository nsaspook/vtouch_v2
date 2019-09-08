/*******************************************************************************
  File Name:
    app.c

  Summary:


  Description:

 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
#include "app.h"
#include "bmcnet.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.

    Application strings and buffers are be defined outside this structure.
 */
APP_DATA appData;

char net_message[256] = "foo";

BSP_LED_STATE LEDstate = BSP_LED_STATE_OFF;

#if defined(TCPIP_IF_MRF24WN) || defined(TCPIP_IF_WINC1500)
static const bool s_app_wifi = true;
#else
static const bool s_app_wifi = false;
#endif

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
 */

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary local functions.
 */

#if defined(TCPIP_IF_MRF24WN) || defined(TCPIP_IF_WINC1500)
extern void APP_WIFI_Initialize(void);
extern void APP_WIFI_Tasks(void);
#else
#define APP_WIFI_Initialize() do { } while (0)
#define APP_WIFI_Tasks() do { } while (0)
#endif

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */
void APP_Initialize(void)
{
	if (s_app_wifi)
		APP_WIFI_Initialize();

	/* Place the application state machine in its initial state. */
	appData.state = APP_MOUNT_DISK;
}

/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */
void APP_Tasks(void)
{
	SYS_STATUS tcpipStat;
	TCPIP_NET_HANDLE netH;
	int nNets;
	static IPV4_ADDR dwLastIP[2] = {
		{-1},
		{-1}
	};
	IPV4_ADDR ipAddr;
	int i;
	const char *netName, *netBiosName;
	static uint32_t startTick = 0;

	if (s_app_wifi) {
		APP_WIFI_Tasks();
		return;
	}

	switch (appData.state) {
	case APP_MOUNT_DISK:
		if (SYS_FS_Mount(SYS_FS_NVM_VOL, LOCAL_WEBSITE_PATH_FS, MPFS2, 0, NULL) == 0) {
			SYS_CONSOLE_PRINT("SYS_Initialize: The %s File System is mounted\r\n", SYS_FS_MPFS_STRING);
			appData.state = APP_TCPIP_WAIT_INIT;
		}
		break;

	case APP_TCPIP_WAIT_INIT:
		tcpipStat = TCPIP_STACK_Status(sysObj.tcpip);
		if (tcpipStat < 0) { // some error occurred
			SYS_CONSOLE_MESSAGE("APP: TCP/IP stack initialization failed!\r\n");
			appData.state = APP_TCPIP_ERROR;
		} else if (tcpipStat == SYS_STATUS_READY) {
			// now that the stack is ready we can check the
			// available interfaces and register
			// a Bonjour service

			nNets = TCPIP_STACK_NumberOfNetworksGet();

			for (i = 0; i < nNets; i++) {
				netH = TCPIP_STACK_IndexToNet(i);
				netName = TCPIP_STACK_NetNameGet(netH);
				netBiosName = TCPIP_STACK_NetBIOSName(netH);

#if defined(TCPIP_STACK_USE_NBNS)
				SYS_CONSOLE_PRINT("    Interface %s on host %s - NBNS enabled\r\n", netName, netBiosName);
#else
				SYS_CONSOLE_PRINT("    Interface %s on host %s - NBNS disabled\r\n", netName, netBiosName);
#endif // defined(TCPIP_STACK_USE_NBNS)

#if defined(TCPIP_STACK_USE_ZEROCONF_MDNS_SD)
				// base name of the service Must not exceed 16 bytes long
				// the last digit will be incremented by interface
				char mDNSServiceName[] = "MyWebServiceNameX ";

				mDNSServiceName[sizeof(mDNSServiceName) - 2] = '1' + i;
				TCPIP_MDNS_ServiceRegister(netH
					, mDNSServiceName // name of the service
					, "_http._tcp.local" // type of the service
					, 80 // TCP or UDP port, at which this service is available
					, ((const uint8_t *) "path=/index.htm") // TXT info
					, 1 // auto rename the service when if needed
					, NULL // no callback function
					, NULL); // no application context
#endif // defined(TCPIP_STACK_USE_ZEROCONF_MDNS_SD)
			}

			appData.state = APP_TCPIP_TRANSACT;
		}

		break;

	case APP_TCPIP_TRANSACT:
		if (SYS_TMR_TickCountGet() - startTick >= SYS_TMR_TickCounterFrequencyGet() / 2ul) {
			startTick = SYS_TMR_TickCountGet();
			LEDstate ^= BSP_LED_STATE_ON;
			BSP_LEDStateSet(APP_LED_1, LEDstate);
			sprintf(net_message, "%i,%i,%i,%i,X", (int) 15, (int) 15, 15, 1);
			bmc_client(net_message);
		}

		// if the IP address of an interface has changed
		// display the new value on the system console
		nNets = TCPIP_STACK_NumberOfNetworksGet();

		for (i = 0; i < nNets; i++) {
			netH = TCPIP_STACK_IndexToNet(i);
			ipAddr.Val = TCPIP_STACK_NetAddress(netH);
			if (dwLastIP[i].Val != ipAddr.Val) {
				dwLastIP[i].Val = ipAddr.Val;
				SYS_CONSOLE_PRINT("%s IP Address: %d.%d.%d.%d \r\n",
					TCPIP_STACK_NetNameGet(netH),
					ipAddr.v[0], ipAddr.v[1], ipAddr.v[2], ipAddr.v[3]);
			}
		}

		SYS_CMD_READY_TO_READ();

		break;

	default:
		break;
	}
}

/*******************************************************************************
 End of File
 */
