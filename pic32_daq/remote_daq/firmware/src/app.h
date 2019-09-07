/*******************************************************************************
  MPLAB Harmony Application Header File

  Company:
    Microchip Technology Inc.

  File Name:
    app.h

  Summary:
    This header file provides prototypes and definitions for the application.

  Description:
    This header file provides function prototypes and data type definitions for
    the application.  Some of these are required by the system (such as the
    "APP_Initialize" and "APP_Tasks" prototypes) and some of them are only used
    internally by the application (such as the "APP_STATES" definition).  Both
    are defined here for convenience.
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

#ifndef _APP_H
#define _APP_H

#define WIFI_TCPIP_WEB_SERVER_DEMO
#define WIFI_TCPIP_WEB_SERVER_DEMO_VERSION "1.0"

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
#include "system_config.h"
#include "system_definitions.h"

/* BSP LED and Switch Re-directs */
/* This section is highly customizable based on application's specific needs. */
#if !defined(BSP_SWITCH_3StateGet) // very roughly assume that chipkit_wf32 is used

#define APP_LED_1 BSP_LED_0
#define APP_LED_2 BSP_LED_2
#define APP_LED_3 BSP_LED_3

#define APP_SWITCH_1StateGet() BSP_SWITCH_0StateGet()
#define APP_SWITCH_2StateGet() BSP_SWITCH_2StateGet()
#define APP_SWITCH_3StateGet() false

#elif defined(BSP_SWITCH_4StateGet) // very roughly assume that pic32mx795_pim__e16 is used

#define APP_LED_1 BSP_LED_3
#define APP_LED_2 BSP_LED_4
#define APP_LED_3 BSP_LED_5

#define APP_SWITCH_1StateGet() BSP_SWITCH_4StateGet()
#define APP_SWITCH_2StateGet() BSP_SWITCH_5StateGet()
#define APP_SWITCH_3StateGet() BSP_SWITCH_6StateGet()

#else

#define APP_LED_1 BSP_LED_3
#define APP_LED_2 BSP_LED_2
#define APP_LED_3 BSP_LED_1

#define APP_SWITCH_1StateGet() true // UART Console occupies this pin on PIC32 MZ EC/EF SK
#define APP_SWITCH_2StateGet() BSP_SWITCH_2StateGet()
#define APP_SWITCH_3StateGet() BSP_SWITCH_1StateGet()

#endif

// *****************************************************************************
// *****************************************************************************
// Section: Type Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application States

  Summary:
    Application states enumeration

  Description:
    This enumeration defines the valid application states.  These states
    determine the behavior of the application at various times.
 */
typedef enum
{
    /* The application mounts the disk. */
    APP_MOUNT_DISK = 0,

    /* In this state, the application waits for the initialization of the TCP/IP stack
       to complete. */
    APP_TCPIP_WAIT_INIT,

    /* The application configures the Wi-Fi settings. */
    APP_WIFI_CONFIG,

    /* In this state, the application runs the Wi-Fi prescan. */
    APP_WIFI_PRESCAN,

    /* In this state, the application enables TCP/IP modules such as DHCP, NBNS and mDNS
       in all available interfaces. */
    APP_TCPIP_MODULES_ENABLE,

    /* In this state, the application can do TCP/IP transactions. */
    APP_TCPIP_TRANSACT,

    /* In this state, the application performs module FW update over the air. */
    APP_FW_OTA_UPDATE,

    /* In this state, the application waits till FW update gets completed. */
    APP_WAIT_FOR_FW_UPDATE,

    /* The application waits in this state for the driver to be ready
       before sending the "hello world" message. */
    //APP_STATE_WAIT_FOR_READY,

    /* The application waits in this state for the driver to finish
       sending the message. */
    //APP_STATE_WAIT_FOR_DONE,

    /* The application does nothing in the idle state. */
    //APP_STATE_IDLE

    APP_USERIO_LED_DEASSERTED,

    APP_USERIO_LED_ASSERTED,

    APP_TCPIP_ERROR,

} APP_STATE;

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    Application strings and buffers are be defined outside this structure.
 */
typedef struct
{
    /* SYS_FS file handle */
    SYS_FS_HANDLE fileHandle;

    /* application's current state */
    APP_STATE state;

    /* application data buffer */
    //uint8_t data[64];

    //uint32_t nBytesWritten;

    //uint32_t nBytesRead;
} APP_DATA;

/* It is intentionally declared this way to sync with WDRV_DEVICE_TYPE. */
typedef enum {
    MRF24WN_MODULE = 3,
    WINC1500_MODULE = 4
} WF_MODULE_TYPE;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Routines
// *****************************************************************************
// *****************************************************************************

/* These routines are called by drivers when certain events occur.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Summary:
     MPLAB Harmony application initialization routine.

  Description:
    This function initializes the Harmony application.  It places the
    application in its initial state and prepares it to run so that its
    APP_Tasks function can be called.

  Precondition:
    All other system initialization routines should be called before calling
    this routine (in "SYS_Initialize").

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_Initialize();
    </code>

  Remarks:
    This routine must be called from the SYS_Initialize function.
 */
void APP_Initialize(void);

/*******************************************************************************
  Function:
    void APP_Tasks ( void )

  Summary:
    MPLAB Harmony Demo application tasks function

  Description:
    This routine is the Harmony Demo application's tasks function.  It
    defines the application's state machine and core logic.

  Precondition:
    The system and application initialization ("SYS_Initialize") should be
    called before calling this.

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_Tasks();
    </code>

  Remarks:
    This routine must be called from SYS_Tasks() routine.
 */
void APP_Tasks(void);

#endif /* _APP_H */

/*******************************************************************************
 End of File
 */
