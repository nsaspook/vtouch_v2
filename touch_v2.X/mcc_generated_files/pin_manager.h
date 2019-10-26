/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.65.2
        Device            :  PIC18F57K42
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 1.45
        MPLAB 	          :  MPLAB X 4.15	
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set C_BATT aliases
#define C_BATT_TRIS                 TRISAbits.TRISA0
#define C_BATT_LAT                  LATAbits.LATA0
#define C_BATT_PORT                 PORTAbits.RA0
#define C_BATT_WPU                  WPUAbits.WPUA0
#define C_BATT_OD                   ODCONAbits.ODCA0
#define C_BATT_ANS                  ANSELAbits.ANSELA0
#define C_BATT_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define C_BATT_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define C_BATT_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define C_BATT_GetValue()           PORTAbits.RA0
#define C_BATT_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define C_BATT_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define C_BATT_SetPullup()          do { WPUAbits.WPUA0 = 1; } while(0)
#define C_BATT_ResetPullup()        do { WPUAbits.WPUA0 = 0; } while(0)
#define C_BATT_SetPushPull()        do { ODCONAbits.ODCA0 = 0; } while(0)
#define C_BATT_SetOpenDrain()       do { ODCONAbits.ODCA0 = 1; } while(0)
#define C_BATT_SetAnalogMode()      do { ANSELAbits.ANSELA0 = 1; } while(0)
#define C_BATT_SetDigitalMode()     do { ANSELAbits.ANSELA0 = 0; } while(0)

// get/set C_PV aliases
#define C_PV_TRIS                 TRISAbits.TRISA1
#define C_PV_LAT                  LATAbits.LATA1
#define C_PV_PORT                 PORTAbits.RA1
#define C_PV_WPU                  WPUAbits.WPUA1
#define C_PV_OD                   ODCONAbits.ODCA1
#define C_PV_ANS                  ANSELAbits.ANSELA1
#define C_PV_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define C_PV_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define C_PV_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define C_PV_GetValue()           PORTAbits.RA1
#define C_PV_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define C_PV_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define C_PV_SetPullup()          do { WPUAbits.WPUA1 = 1; } while(0)
#define C_PV_ResetPullup()        do { WPUAbits.WPUA1 = 0; } while(0)
#define C_PV_SetPushPull()        do { ODCONAbits.ODCA1 = 0; } while(0)
#define C_PV_SetOpenDrain()       do { ODCONAbits.ODCA1 = 1; } while(0)
#define C_PV_SetAnalogMode()      do { ANSELAbits.ANSELA1 = 1; } while(0)
#define C_PV_SetDigitalMode()     do { ANSELAbits.ANSELA1 = 0; } while(0)

// get/set V_CC aliases
#define V_CC_TRIS                 TRISAbits.TRISA2
#define V_CC_LAT                  LATAbits.LATA2
#define V_CC_PORT                 PORTAbits.RA2
#define V_CC_WPU                  WPUAbits.WPUA2
#define V_CC_OD                   ODCONAbits.ODCA2
#define V_CC_ANS                  ANSELAbits.ANSELA2
#define V_CC_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define V_CC_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define V_CC_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define V_CC_GetValue()           PORTAbits.RA2
#define V_CC_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define V_CC_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define V_CC_SetPullup()          do { WPUAbits.WPUA2 = 1; } while(0)
#define V_CC_ResetPullup()        do { WPUAbits.WPUA2 = 0; } while(0)
#define V_CC_SetPushPull()        do { ODCONAbits.ODCA2 = 0; } while(0)
#define V_CC_SetOpenDrain()       do { ODCONAbits.ODCA2 = 1; } while(0)
#define V_CC_SetAnalogMode()      do { ANSELAbits.ANSELA2 = 1; } while(0)
#define V_CC_SetDigitalMode()     do { ANSELAbits.ANSELA2 = 0; } while(0)

// get/set RA3 procedures
#define RA3_SetHigh()            do { LATAbits.LATA3 = 1; } while(0)
#define RA3_SetLow()             do { LATAbits.LATA3 = 0; } while(0)
#define RA3_Toggle()             do { LATAbits.LATA3 = ~LATAbits.LATA3; } while(0)
#define RA3_GetValue()              PORTAbits.RA3
#define RA3_SetDigitalInput()    do { TRISAbits.TRISA3 = 1; } while(0)
#define RA3_SetDigitalOutput()   do { TRISAbits.TRISA3 = 0; } while(0)
#define RA3_SetPullup()             do { WPUAbits.WPUA3 = 1; } while(0)
#define RA3_ResetPullup()           do { WPUAbits.WPUA3 = 0; } while(0)
#define RA3_SetAnalogMode()         do { ANSELAbits.ANSELA3 = 1; } while(0)
#define RA3_SetDigitalMode()        do { ANSELAbits.ANSELA3 = 0; } while(0)

// get/set V_BAT aliases
#define V_BAT_TRIS                 TRISAbits.TRISA4
#define V_BAT_LAT                  LATAbits.LATA4
#define V_BAT_PORT                 PORTAbits.RA4
#define V_BAT_WPU                  WPUAbits.WPUA4
#define V_BAT_OD                   ODCONAbits.ODCA4
#define V_BAT_ANS                  ANSELAbits.ANSELA4
#define V_BAT_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define V_BAT_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define V_BAT_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define V_BAT_GetValue()           PORTAbits.RA4
#define V_BAT_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define V_BAT_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define V_BAT_SetPullup()          do { WPUAbits.WPUA4 = 1; } while(0)
#define V_BAT_ResetPullup()        do { WPUAbits.WPUA4 = 0; } while(0)
#define V_BAT_SetPushPull()        do { ODCONAbits.ODCA4 = 0; } while(0)
#define V_BAT_SetOpenDrain()       do { ODCONAbits.ODCA4 = 1; } while(0)
#define V_BAT_SetAnalogMode()      do { ANSELAbits.ANSELA4 = 1; } while(0)
#define V_BAT_SetDigitalMode()     do { ANSELAbits.ANSELA4 = 0; } while(0)

// get/set V_PV aliases
#define V_PV_TRIS                 TRISAbits.TRISA5
#define V_PV_LAT                  LATAbits.LATA5
#define V_PV_PORT                 PORTAbits.RA5
#define V_PV_WPU                  WPUAbits.WPUA5
#define V_PV_OD                   ODCONAbits.ODCA5
#define V_PV_ANS                  ANSELAbits.ANSELA5
#define V_PV_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define V_PV_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define V_PV_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define V_PV_GetValue()           PORTAbits.RA5
#define V_PV_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define V_PV_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define V_PV_SetPullup()          do { WPUAbits.WPUA5 = 1; } while(0)
#define V_PV_ResetPullup()        do { WPUAbits.WPUA5 = 0; } while(0)
#define V_PV_SetPushPull()        do { ODCONAbits.ODCA5 = 0; } while(0)
#define V_PV_SetOpenDrain()       do { ODCONAbits.ODCA5 = 1; } while(0)
#define V_PV_SetAnalogMode()      do { ANSELAbits.ANSELA5 = 1; } while(0)
#define V_PV_SetDigitalMode()     do { ANSELAbits.ANSELA5 = 0; } while(0)

// get/set V_CBUS aliases
#define V_CBUS_TRIS                 TRISAbits.TRISA6
#define V_CBUS_LAT                  LATAbits.LATA6
#define V_CBUS_PORT                 PORTAbits.RA6
#define V_CBUS_WPU                  WPUAbits.WPUA6
#define V_CBUS_OD                   ODCONAbits.ODCA6
#define V_CBUS_ANS                  ANSELAbits.ANSELA6
#define V_CBUS_SetHigh()            do { LATAbits.LATA6 = 1; } while(0)
#define V_CBUS_SetLow()             do { LATAbits.LATA6 = 0; } while(0)
#define V_CBUS_Toggle()             do { LATAbits.LATA6 = ~LATAbits.LATA6; } while(0)
#define V_CBUS_GetValue()           PORTAbits.RA6
#define V_CBUS_SetDigitalInput()    do { TRISAbits.TRISA6 = 1; } while(0)
#define V_CBUS_SetDigitalOutput()   do { TRISAbits.TRISA6 = 0; } while(0)
#define V_CBUS_SetPullup()          do { WPUAbits.WPUA6 = 1; } while(0)
#define V_CBUS_ResetPullup()        do { WPUAbits.WPUA6 = 0; } while(0)
#define V_CBUS_SetPushPull()        do { ODCONAbits.ODCA6 = 0; } while(0)
#define V_CBUS_SetOpenDrain()       do { ODCONAbits.ODCA6 = 1; } while(0)
#define V_CBUS_SetAnalogMode()      do { ANSELAbits.ANSELA6 = 1; } while(0)
#define V_CBUS_SetDigitalMode()     do { ANSELAbits.ANSELA6 = 0; } while(0)

// get/set RB0 procedures
#define RB0_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define RB0_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define RB0_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define RB0_GetValue()              PORTBbits.RB0
#define RB0_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define RB0_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define RB0_SetPullup()             do { WPUBbits.WPUB0 = 1; } while(0)
#define RB0_ResetPullup()           do { WPUBbits.WPUB0 = 0; } while(0)
#define RB0_SetAnalogMode()         do { ANSELBbits.ANSELB0 = 1; } while(0)
#define RB0_SetDigitalMode()        do { ANSELBbits.ANSELB0 = 0; } while(0)

// get/set RB1 procedures
#define RB1_SetHigh()            do { LATBbits.LATB1 = 1; } while(0)
#define RB1_SetLow()             do { LATBbits.LATB1 = 0; } while(0)
#define RB1_Toggle()             do { LATBbits.LATB1 = ~LATBbits.LATB1; } while(0)
#define RB1_GetValue()              PORTBbits.RB1
#define RB1_SetDigitalInput()    do { TRISBbits.TRISB1 = 1; } while(0)
#define RB1_SetDigitalOutput()   do { TRISBbits.TRISB1 = 0; } while(0)
#define RB1_SetPullup()             do { WPUBbits.WPUB1 = 1; } while(0)
#define RB1_ResetPullup()           do { WPUBbits.WPUB1 = 0; } while(0)
#define RB1_SetAnalogMode()         do { ANSELBbits.ANSELB1 = 1; } while(0)
#define RB1_SetDigitalMode()        do { ANSELBbits.ANSELB1 = 0; } while(0)

// get/set V_BBAT aliases
#define V_BBAT_TRIS                 TRISBbits.TRISB2
#define V_BBAT_LAT                  LATBbits.LATB2
#define V_BBAT_PORT                 PORTBbits.RB2
#define V_BBAT_WPU                  WPUBbits.WPUB2
#define V_BBAT_OD                   ODCONBbits.ODCB2
#define V_BBAT_ANS                  ANSELBbits.ANSELB2
#define V_BBAT_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define V_BBAT_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define V_BBAT_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define V_BBAT_GetValue()           PORTBbits.RB2
#define V_BBAT_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define V_BBAT_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define V_BBAT_SetPullup()          do { WPUBbits.WPUB2 = 1; } while(0)
#define V_BBAT_ResetPullup()        do { WPUBbits.WPUB2 = 0; } while(0)
#define V_BBAT_SetPushPull()        do { ODCONBbits.ODCB2 = 0; } while(0)
#define V_BBAT_SetOpenDrain()       do { ODCONBbits.ODCB2 = 1; } while(0)
#define V_BBAT_SetAnalogMode()      do { ANSELBbits.ANSELB2 = 1; } while(0)
#define V_BBAT_SetDigitalMode()     do { ANSELBbits.ANSELB2 = 0; } while(0)

// get/set V_TEMP aliases
#define V_TEMP_TRIS                 TRISBbits.TRISB3
#define V_TEMP_LAT                  LATBbits.LATB3
#define V_TEMP_PORT                 PORTBbits.RB3
#define V_TEMP_WPU                  WPUBbits.WPUB3
#define V_TEMP_OD                   ODCONBbits.ODCB3
#define V_TEMP_ANS                  ANSELBbits.ANSELB3
#define V_TEMP_SetHigh()            do { LATBbits.LATB3 = 1; } while(0)
#define V_TEMP_SetLow()             do { LATBbits.LATB3 = 0; } while(0)
#define V_TEMP_Toggle()             do { LATBbits.LATB3 = ~LATBbits.LATB3; } while(0)
#define V_TEMP_GetValue()           PORTBbits.RB3
#define V_TEMP_SetDigitalInput()    do { TRISBbits.TRISB3 = 1; } while(0)
#define V_TEMP_SetDigitalOutput()   do { TRISBbits.TRISB3 = 0; } while(0)
#define V_TEMP_SetPullup()          do { WPUBbits.WPUB3 = 1; } while(0)
#define V_TEMP_ResetPullup()        do { WPUBbits.WPUB3 = 0; } while(0)
#define V_TEMP_SetPushPull()        do { ODCONBbits.ODCB3 = 0; } while(0)
#define V_TEMP_SetOpenDrain()       do { ODCONBbits.ODCB3 = 1; } while(0)
#define V_TEMP_SetAnalogMode()      do { ANSELBbits.ANSELB3 = 1; } while(0)
#define V_TEMP_SetDigitalMode()     do { ANSELBbits.ANSELB3 = 0; } while(0)

// get/set V_INVERTER aliases
#define V_INVERTER_TRIS                 TRISBbits.TRISB4
#define V_INVERTER_LAT                  LATBbits.LATB4
#define V_INVERTER_PORT                 PORTBbits.RB4
#define V_INVERTER_WPU                  WPUBbits.WPUB4
#define V_INVERTER_OD                   ODCONBbits.ODCB4
#define V_INVERTER_ANS                  ANSELBbits.ANSELB4
#define V_INVERTER_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define V_INVERTER_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define V_INVERTER_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define V_INVERTER_GetValue()           PORTBbits.RB4
#define V_INVERTER_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define V_INVERTER_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define V_INVERTER_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define V_INVERTER_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define V_INVERTER_SetPushPull()        do { ODCONBbits.ODCB4 = 0; } while(0)
#define V_INVERTER_SetOpenDrain()       do { ODCONBbits.ODCB4 = 1; } while(0)
#define V_INVERTER_SetAnalogMode()      do { ANSELBbits.ANSELB4 = 1; } while(0)
#define V_INVERTER_SetDigitalMode()     do { ANSELBbits.ANSELB4 = 0; } while(0)

// get/set channel_ANB5 aliases
#define channel_ANB5_TRIS                 TRISBbits.TRISB5
#define channel_ANB5_LAT                  LATBbits.LATB5
#define channel_ANB5_PORT                 PORTBbits.RB5
#define channel_ANB5_WPU                  WPUBbits.WPUB5
#define channel_ANB5_OD                   ODCONBbits.ODCB5
#define channel_ANB5_ANS                  ANSELBbits.ANSELB5
#define channel_ANB5_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define channel_ANB5_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define channel_ANB5_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define channel_ANB5_GetValue()           PORTBbits.RB5
#define channel_ANB5_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define channel_ANB5_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define channel_ANB5_SetPullup()          do { WPUBbits.WPUB5 = 1; } while(0)
#define channel_ANB5_ResetPullup()        do { WPUBbits.WPUB5 = 0; } while(0)
#define channel_ANB5_SetPushPull()        do { ODCONBbits.ODCB5 = 0; } while(0)
#define channel_ANB5_SetOpenDrain()       do { ODCONBbits.ODCB5 = 1; } while(0)
#define channel_ANB5_SetAnalogMode()      do { ANSELBbits.ANSELB5 = 1; } while(0)
#define channel_ANB5_SetDigitalMode()     do { ANSELBbits.ANSELB5 = 0; } while(0)

// get/set RB6 procedures
#define RB6_SetHigh()            do { LATBbits.LATB6 = 1; } while(0)
#define RB6_SetLow()             do { LATBbits.LATB6 = 0; } while(0)
#define RB6_Toggle()             do { LATBbits.LATB6 = ~LATBbits.LATB6; } while(0)
#define RB6_GetValue()              PORTBbits.RB6
#define RB6_SetDigitalInput()    do { TRISBbits.TRISB6 = 1; } while(0)
#define RB6_SetDigitalOutput()   do { TRISBbits.TRISB6 = 0; } while(0)
#define RB6_SetPullup()             do { WPUBbits.WPUB6 = 1; } while(0)
#define RB6_ResetPullup()           do { WPUBbits.WPUB6 = 0; } while(0)
#define RB6_SetAnalogMode()         do { ANSELBbits.ANSELB6 = 1; } while(0)
#define RB6_SetDigitalMode()        do { ANSELBbits.ANSELB6 = 0; } while(0)

// get/set RB7 procedures
#define RB7_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define RB7_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define RB7_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define RB7_GetValue()              PORTBbits.RB7
#define RB7_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define RB7_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define RB7_SetPullup()             do { WPUBbits.WPUB7 = 1; } while(0)
#define RB7_ResetPullup()           do { WPUBbits.WPUB7 = 0; } while(0)
#define RB7_SetAnalogMode()         do { ANSELBbits.ANSELB7 = 1; } while(0)
#define RB7_SetDigitalMode()        do { ANSELBbits.ANSELB7 = 0; } while(0)

// get/set CS_SDCARD aliases
#define CS_SDCARD_TRIS                 TRISCbits.TRISC0
#define CS_SDCARD_LAT                  LATCbits.LATC0
#define CS_SDCARD_PORT                 PORTCbits.RC0
#define CS_SDCARD_WPU                  WPUCbits.WPUC0
#define CS_SDCARD_OD                   ODCONCbits.ODCC0
#define CS_SDCARD_ANS                  ANSELCbits.ANSELC0
#define CS_SDCARD_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define CS_SDCARD_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define CS_SDCARD_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define CS_SDCARD_GetValue()           PORTCbits.RC0
#define CS_SDCARD_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define CS_SDCARD_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)
#define CS_SDCARD_SetPullup()          do { WPUCbits.WPUC0 = 1; } while(0)
#define CS_SDCARD_ResetPullup()        do { WPUCbits.WPUC0 = 0; } while(0)
#define CS_SDCARD_SetPushPull()        do { ODCONCbits.ODCC0 = 0; } while(0)
#define CS_SDCARD_SetOpenDrain()       do { ODCONCbits.ODCC0 = 1; } while(0)
#define CS_SDCARD_SetAnalogMode()      do { ANSELCbits.ANSELC0 = 1; } while(0)
#define CS_SDCARD_SetDigitalMode()     do { ANSELCbits.ANSELC0 = 0; } while(0)

// get/set RS aliases
#define RS_TRIS                 TRISCbits.TRISC1
#define RS_LAT                  LATCbits.LATC1
#define RS_PORT                 PORTCbits.RC1
#define RS_WPU                  WPUCbits.WPUC1
#define RS_OD                   ODCONCbits.ODCC1
#define RS_ANS                  ANSELCbits.ANSELC1
#define RS_SetHigh()            do { LATCbits.LATC1 = 1; } while(0)
#define RS_SetLow()             do { LATCbits.LATC1 = 0; } while(0)
#define RS_Toggle()             do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define RS_GetValue()           PORTCbits.RC1
#define RS_SetDigitalInput()    do { TRISCbits.TRISC1 = 1; } while(0)
#define RS_SetDigitalOutput()   do { TRISCbits.TRISC1 = 0; } while(0)
#define RS_SetPullup()          do { WPUCbits.WPUC1 = 1; } while(0)
#define RS_ResetPullup()        do { WPUCbits.WPUC1 = 0; } while(0)
#define RS_SetPushPull()        do { ODCONCbits.ODCC1 = 0; } while(0)
#define RS_SetOpenDrain()       do { ODCONCbits.ODCC1 = 1; } while(0)
#define RS_SetAnalogMode()      do { ANSELCbits.ANSELC1 = 1; } while(0)
#define RS_SetDigitalMode()     do { ANSELCbits.ANSELC1 = 0; } while(0)

// get/set CSB aliases
#define CSB_TRIS                 TRISCbits.TRISC2
#define CSB_LAT                  LATCbits.LATC2
#define CSB_PORT                 PORTCbits.RC2
#define CSB_WPU                  WPUCbits.WPUC2
#define CSB_OD                   ODCONCbits.ODCC2
#define CSB_ANS                  ANSELCbits.ANSELC2
#define CSB_SetHigh()            do { LATCbits.LATC2 = 1; } while(0)
#define CSB_SetLow()             do { LATCbits.LATC2 = 0; } while(0)
#define CSB_Toggle()             do { LATCbits.LATC2 = ~LATCbits.LATC2; } while(0)
#define CSB_GetValue()           PORTCbits.RC2
#define CSB_SetDigitalInput()    do { TRISCbits.TRISC2 = 1; } while(0)
#define CSB_SetDigitalOutput()   do { TRISCbits.TRISC2 = 0; } while(0)
#define CSB_SetPullup()          do { WPUCbits.WPUC2 = 1; } while(0)
#define CSB_ResetPullup()        do { WPUCbits.WPUC2 = 0; } while(0)
#define CSB_SetPushPull()        do { ODCONCbits.ODCC2 = 0; } while(0)
#define CSB_SetOpenDrain()       do { ODCONCbits.ODCC2 = 1; } while(0)
#define CSB_SetAnalogMode()      do { ANSELCbits.ANSELC2 = 1; } while(0)
#define CSB_SetDigitalMode()     do { ANSELCbits.ANSELC2 = 0; } while(0)

// get/set RC3 procedures
#define RC3_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define RC3_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define RC3_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define RC3_GetValue()              PORTCbits.RC3
#define RC3_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define RC3_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)
#define RC3_SetPullup()             do { WPUCbits.WPUC3 = 1; } while(0)
#define RC3_ResetPullup()           do { WPUCbits.WPUC3 = 0; } while(0)
#define RC3_SetAnalogMode()         do { ANSELCbits.ANSELC3 = 1; } while(0)
#define RC3_SetDigitalMode()        do { ANSELCbits.ANSELC3 = 0; } while(0)

// get/set RC4 procedures
#define RC4_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define RC4_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define RC4_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define RC4_GetValue()              PORTCbits.RC4
#define RC4_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define RC4_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define RC4_SetPullup()             do { WPUCbits.WPUC4 = 1; } while(0)
#define RC4_ResetPullup()           do { WPUCbits.WPUC4 = 0; } while(0)
#define RC4_SetAnalogMode()         do { ANSELCbits.ANSELC4 = 1; } while(0)
#define RC4_SetDigitalMode()        do { ANSELCbits.ANSELC4 = 0; } while(0)

// get/set RC5 procedures
#define RC5_SetHigh()            do { LATCbits.LATC5 = 1; } while(0)
#define RC5_SetLow()             do { LATCbits.LATC5 = 0; } while(0)
#define RC5_Toggle()             do { LATCbits.LATC5 = ~LATCbits.LATC5; } while(0)
#define RC5_GetValue()              PORTCbits.RC5
#define RC5_SetDigitalInput()    do { TRISCbits.TRISC5 = 1; } while(0)
#define RC5_SetDigitalOutput()   do { TRISCbits.TRISC5 = 0; } while(0)
#define RC5_SetPullup()             do { WPUCbits.WPUC5 = 1; } while(0)
#define RC5_ResetPullup()           do { WPUCbits.WPUC5 = 0; } while(0)
#define RC5_SetAnalogMode()         do { ANSELCbits.ANSELC5 = 1; } while(0)
#define RC5_SetDigitalMode()        do { ANSELCbits.ANSELC5 = 0; } while(0)

// get/set RC6 procedures
#define RC6_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define RC6_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define RC6_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define RC6_GetValue()              PORTCbits.RC6
#define RC6_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define RC6_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)
#define RC6_SetPullup()             do { WPUCbits.WPUC6 = 1; } while(0)
#define RC6_ResetPullup()           do { WPUCbits.WPUC6 = 0; } while(0)
#define RC6_SetAnalogMode()         do { ANSELCbits.ANSELC6 = 1; } while(0)
#define RC6_SetDigitalMode()        do { ANSELCbits.ANSELC6 = 0; } while(0)

// get/set RC7 procedures
#define RC7_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define RC7_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define RC7_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define RC7_GetValue()              PORTCbits.RC7
#define RC7_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define RC7_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define RC7_SetPullup()             do { WPUCbits.WPUC7 = 1; } while(0)
#define RC7_ResetPullup()           do { WPUCbits.WPUC7 = 0; } while(0)
#define RC7_SetAnalogMode()         do { ANSELCbits.ANSELC7 = 1; } while(0)
#define RC7_SetDigitalMode()        do { ANSELCbits.ANSELC7 = 0; } while(0)

// get/set RELAY0 aliases
#define RELAY0_TRIS                 TRISDbits.TRISD0
#define RELAY0_LAT                  LATDbits.LATD0
#define RELAY0_PORT                 PORTDbits.RD0
#define RELAY0_WPU                  WPUDbits.WPUD0
#define RELAY0_OD                   ODCONDbits.ODCD0
#define RELAY0_ANS                  ANSELDbits.ANSELD0
#define RELAY0_SetHigh()            do { LATDbits.LATD0 = 1; } while(0)
#define RELAY0_SetLow()             do { LATDbits.LATD0 = 0; } while(0)
#define RELAY0_Toggle()             do { LATDbits.LATD0 = ~LATDbits.LATD0; } while(0)
#define RELAY0_GetValue()           PORTDbits.RD0
#define RELAY0_SetDigitalInput()    do { TRISDbits.TRISD0 = 1; } while(0)
#define RELAY0_SetDigitalOutput()   do { TRISDbits.TRISD0 = 0; } while(0)
#define RELAY0_SetPullup()          do { WPUDbits.WPUD0 = 1; } while(0)
#define RELAY0_ResetPullup()        do { WPUDbits.WPUD0 = 0; } while(0)
#define RELAY0_SetPushPull()        do { ODCONDbits.ODCD0 = 0; } while(0)
#define RELAY0_SetOpenDrain()       do { ODCONDbits.ODCD0 = 1; } while(0)
#define RELAY0_SetAnalogMode()      do { ANSELDbits.ANSELD0 = 1; } while(0)
#define RELAY0_SetDigitalMode()     do { ANSELDbits.ANSELD0 = 0; } while(0)

// get/set RD1 procedures
#define RD1_SetHigh()            do { LATDbits.LATD1 = 1; } while(0)
#define RD1_SetLow()             do { LATDbits.LATD1 = 0; } while(0)
#define RD1_Toggle()             do { LATDbits.LATD1 = ~LATDbits.LATD1; } while(0)
#define RD1_GetValue()              PORTDbits.RD1
#define RD1_SetDigitalInput()    do { TRISDbits.TRISD1 = 1; } while(0)
#define RD1_SetDigitalOutput()   do { TRISDbits.TRISD1 = 0; } while(0)
#define RD1_SetPullup()             do { WPUDbits.WPUD1 = 1; } while(0)
#define RD1_ResetPullup()           do { WPUDbits.WPUD1 = 0; } while(0)
#define RD1_SetAnalogMode()         do { ANSELDbits.ANSELD1 = 1; } while(0)
#define RD1_SetDigitalMode()        do { ANSELDbits.ANSELD1 = 0; } while(0)

// get/set SW0 aliases
#define SW0_TRIS                 TRISDbits.TRISD2
#define SW0_LAT                  LATDbits.LATD2
#define SW0_PORT                 PORTDbits.RD2
#define SW0_WPU                  WPUDbits.WPUD2
#define SW0_OD                   ODCONDbits.ODCD2
#define SW0_ANS                  ANSELDbits.ANSELD2
#define SW0_SetHigh()            do { LATDbits.LATD2 = 1; } while(0)
#define SW0_SetLow()             do { LATDbits.LATD2 = 0; } while(0)
#define SW0_Toggle()             do { LATDbits.LATD2 = ~LATDbits.LATD2; } while(0)
#define SW0_GetValue()           PORTDbits.RD2
#define SW0_SetDigitalInput()    do { TRISDbits.TRISD2 = 1; } while(0)
#define SW0_SetDigitalOutput()   do { TRISDbits.TRISD2 = 0; } while(0)
#define SW0_SetPullup()          do { WPUDbits.WPUD2 = 1; } while(0)
#define SW0_ResetPullup()        do { WPUDbits.WPUD2 = 0; } while(0)
#define SW0_SetPushPull()        do { ODCONDbits.ODCD2 = 0; } while(0)
#define SW0_SetOpenDrain()       do { ODCONDbits.ODCD2 = 1; } while(0)
#define SW0_SetAnalogMode()      do { ANSELDbits.ANSELD2 = 1; } while(0)
#define SW0_SetDigitalMode()     do { ANSELDbits.ANSELD2 = 0; } while(0)

// get/set IO_RD3 aliases
#define IO_RD3_TRIS                 TRISDbits.TRISD3
#define IO_RD3_LAT                  LATDbits.LATD3
#define IO_RD3_PORT                 PORTDbits.RD3
#define IO_RD3_WPU                  WPUDbits.WPUD3
#define IO_RD3_OD                   ODCONDbits.ODCD3
#define IO_RD3_ANS                  ANSELDbits.ANSELD3
#define IO_RD3_SetHigh()            do { LATDbits.LATD3 = 1; } while(0)
#define IO_RD3_SetLow()             do { LATDbits.LATD3 = 0; } while(0)
#define IO_RD3_Toggle()             do { LATDbits.LATD3 = ~LATDbits.LATD3; } while(0)
#define IO_RD3_GetValue()           PORTDbits.RD3
#define IO_RD3_SetDigitalInput()    do { TRISDbits.TRISD3 = 1; } while(0)
#define IO_RD3_SetDigitalOutput()   do { TRISDbits.TRISD3 = 0; } while(0)
#define IO_RD3_SetPullup()          do { WPUDbits.WPUD3 = 1; } while(0)
#define IO_RD3_ResetPullup()        do { WPUDbits.WPUD3 = 0; } while(0)
#define IO_RD3_SetPushPull()        do { ODCONDbits.ODCD3 = 0; } while(0)
#define IO_RD3_SetOpenDrain()       do { ODCONDbits.ODCD3 = 1; } while(0)
#define IO_RD3_SetAnalogMode()      do { ANSELDbits.ANSELD3 = 1; } while(0)
#define IO_RD3_SetDigitalMode()     do { ANSELDbits.ANSELD3 = 0; } while(0)

// get/set IO_RD4 aliases
#define IO_RD4_TRIS                 TRISDbits.TRISD4
#define IO_RD4_LAT                  LATDbits.LATD4
#define IO_RD4_PORT                 PORTDbits.RD4
#define IO_RD4_WPU                  WPUDbits.WPUD4
#define IO_RD4_OD                   ODCONDbits.ODCD4
#define IO_RD4_ANS                  ANSELDbits.ANSELD4
#define IO_RD4_SetHigh()            do { LATDbits.LATD4 = 1; } while(0)
#define IO_RD4_SetLow()             do { LATDbits.LATD4 = 0; } while(0)
#define IO_RD4_Toggle()             do { LATDbits.LATD4 = ~LATDbits.LATD4; } while(0)
#define IO_RD4_GetValue()           PORTDbits.RD4
#define IO_RD4_SetDigitalInput()    do { TRISDbits.TRISD4 = 1; } while(0)
#define IO_RD4_SetDigitalOutput()   do { TRISDbits.TRISD4 = 0; } while(0)
#define IO_RD4_SetPullup()          do { WPUDbits.WPUD4 = 1; } while(0)
#define IO_RD4_ResetPullup()        do { WPUDbits.WPUD4 = 0; } while(0)
#define IO_RD4_SetPushPull()        do { ODCONDbits.ODCD4 = 0; } while(0)
#define IO_RD4_SetOpenDrain()       do { ODCONDbits.ODCD4 = 1; } while(0)
#define IO_RD4_SetAnalogMode()      do { ANSELDbits.ANSELD4 = 1; } while(0)
#define IO_RD4_SetDigitalMode()     do { ANSELDbits.ANSELD4 = 0; } while(0)

// get/set IO_RD5 aliases
#define IO_RD5_TRIS                 TRISDbits.TRISD5
#define IO_RD5_LAT                  LATDbits.LATD5
#define IO_RD5_PORT                 PORTDbits.RD5
#define IO_RD5_WPU                  WPUDbits.WPUD5
#define IO_RD5_OD                   ODCONDbits.ODCD5
#define IO_RD5_ANS                  ANSELDbits.ANSELD5
#define IO_RD5_SetHigh()            do { LATDbits.LATD5 = 1; } while(0)
#define IO_RD5_SetLow()             do { LATDbits.LATD5 = 0; } while(0)
#define IO_RD5_Toggle()             do { LATDbits.LATD5 = ~LATDbits.LATD5; } while(0)
#define IO_RD5_GetValue()           PORTDbits.RD5
#define IO_RD5_SetDigitalInput()    do { TRISDbits.TRISD5 = 1; } while(0)
#define IO_RD5_SetDigitalOutput()   do { TRISDbits.TRISD5 = 0; } while(0)
#define IO_RD5_SetPullup()          do { WPUDbits.WPUD5 = 1; } while(0)
#define IO_RD5_ResetPullup()        do { WPUDbits.WPUD5 = 0; } while(0)
#define IO_RD5_SetPushPull()        do { ODCONDbits.ODCD5 = 0; } while(0)
#define IO_RD5_SetOpenDrain()       do { ODCONDbits.ODCD5 = 1; } while(0)
#define IO_RD5_SetAnalogMode()      do { ANSELDbits.ANSELD5 = 1; } while(0)
#define IO_RD5_SetDigitalMode()     do { ANSELDbits.ANSELD5 = 0; } while(0)

// get/set IO_RD6 aliases
#define IO_RD6_TRIS                 TRISDbits.TRISD6
#define IO_RD6_LAT                  LATDbits.LATD6
#define IO_RD6_PORT                 PORTDbits.RD6
#define IO_RD6_WPU                  WPUDbits.WPUD6
#define IO_RD6_OD                   ODCONDbits.ODCD6
#define IO_RD6_ANS                  ANSELDbits.ANSELD6
#define IO_RD6_SetHigh()            do { LATDbits.LATD6 = 1; } while(0)
#define IO_RD6_SetLow()             do { LATDbits.LATD6 = 0; } while(0)
#define IO_RD6_Toggle()             do { LATDbits.LATD6 = ~LATDbits.LATD6; } while(0)
#define IO_RD6_GetValue()           PORTDbits.RD6
#define IO_RD6_SetDigitalInput()    do { TRISDbits.TRISD6 = 1; } while(0)
#define IO_RD6_SetDigitalOutput()   do { TRISDbits.TRISD6 = 0; } while(0)
#define IO_RD6_SetPullup()          do { WPUDbits.WPUD6 = 1; } while(0)
#define IO_RD6_ResetPullup()        do { WPUDbits.WPUD6 = 0; } while(0)
#define IO_RD6_SetPushPull()        do { ODCONDbits.ODCD6 = 0; } while(0)
#define IO_RD6_SetOpenDrain()       do { ODCONDbits.ODCD6 = 1; } while(0)
#define IO_RD6_SetAnalogMode()      do { ANSELDbits.ANSELD6 = 1; } while(0)
#define IO_RD6_SetDigitalMode()     do { ANSELDbits.ANSELD6 = 0; } while(0)

// get/set IO_RD7 aliases
#define IO_RD7_TRIS                 TRISDbits.TRISD7
#define IO_RD7_LAT                  LATDbits.LATD7
#define IO_RD7_PORT                 PORTDbits.RD7
#define IO_RD7_WPU                  WPUDbits.WPUD7
#define IO_RD7_OD                   ODCONDbits.ODCD7
#define IO_RD7_ANS                  ANSELDbits.ANSELD7
#define IO_RD7_SetHigh()            do { LATDbits.LATD7 = 1; } while(0)
#define IO_RD7_SetLow()             do { LATDbits.LATD7 = 0; } while(0)
#define IO_RD7_Toggle()             do { LATDbits.LATD7 = ~LATDbits.LATD7; } while(0)
#define IO_RD7_GetValue()           PORTDbits.RD7
#define IO_RD7_SetDigitalInput()    do { TRISDbits.TRISD7 = 1; } while(0)
#define IO_RD7_SetDigitalOutput()   do { TRISDbits.TRISD7 = 0; } while(0)
#define IO_RD7_SetPullup()          do { WPUDbits.WPUD7 = 1; } while(0)
#define IO_RD7_ResetPullup()        do { WPUDbits.WPUD7 = 0; } while(0)
#define IO_RD7_SetPushPull()        do { ODCONDbits.ODCD7 = 0; } while(0)
#define IO_RD7_SetOpenDrain()       do { ODCONDbits.ODCD7 = 1; } while(0)
#define IO_RD7_SetAnalogMode()      do { ANSELDbits.ANSELD7 = 1; } while(0)
#define IO_RD7_SetDigitalMode()     do { ANSELDbits.ANSELD7 = 0; } while(0)

// get/set LED0 aliases
#define LED0_TRIS                 TRISEbits.TRISE0
#define LED0_LAT                  LATEbits.LATE0
#define LED0_PORT                 PORTEbits.RE0
#define LED0_WPU                  WPUEbits.WPUE0
#define LED0_OD                   ODCONEbits.ODCE0
#define LED0_ANS                  ANSELEbits.ANSELE0
#define LED0_SetHigh()            do { LATEbits.LATE0 = 1; } while(0)
#define LED0_SetLow()             do { LATEbits.LATE0 = 0; } while(0)
#define LED0_Toggle()             do { LATEbits.LATE0 = ~LATEbits.LATE0; } while(0)
#define LED0_GetValue()           PORTEbits.RE0
#define LED0_SetDigitalInput()    do { TRISEbits.TRISE0 = 1; } while(0)
#define LED0_SetDigitalOutput()   do { TRISEbits.TRISE0 = 0; } while(0)
#define LED0_SetPullup()          do { WPUEbits.WPUE0 = 1; } while(0)
#define LED0_ResetPullup()        do { WPUEbits.WPUE0 = 0; } while(0)
#define LED0_SetPushPull()        do { ODCONEbits.ODCE0 = 0; } while(0)
#define LED0_SetOpenDrain()       do { ODCONEbits.ODCE0 = 1; } while(0)
#define LED0_SetAnalogMode()      do { ANSELEbits.ANSELE0 = 1; } while(0)
#define LED0_SetDigitalMode()     do { ANSELEbits.ANSELE0 = 0; } while(0)

// get/set DEBUG1 aliases
#define DEBUG1_TRIS                 TRISEbits.TRISE1
#define DEBUG1_LAT                  LATEbits.LATE1
#define DEBUG1_PORT                 PORTEbits.RE1
#define DEBUG1_WPU                  WPUEbits.WPUE1
#define DEBUG1_OD                   ODCONEbits.ODCE1
#define DEBUG1_ANS                  ANSELEbits.ANSELE1
#define DEBUG1_SetHigh()            do { LATEbits.LATE1 = 1; } while(0)
#define DEBUG1_SetLow()             do { LATEbits.LATE1 = 0; } while(0)
#define DEBUG1_Toggle()             do { LATEbits.LATE1 = ~LATEbits.LATE1; } while(0)
#define DEBUG1_GetValue()           PORTEbits.RE1
#define DEBUG1_SetDigitalInput()    do { TRISEbits.TRISE1 = 1; } while(0)
#define DEBUG1_SetDigitalOutput()   do { TRISEbits.TRISE1 = 0; } while(0)
#define DEBUG1_SetPullup()          do { WPUEbits.WPUE1 = 1; } while(0)
#define DEBUG1_ResetPullup()        do { WPUEbits.WPUE1 = 0; } while(0)
#define DEBUG1_SetPushPull()        do { ODCONEbits.ODCE1 = 0; } while(0)
#define DEBUG1_SetOpenDrain()       do { ODCONEbits.ODCE1 = 1; } while(0)
#define DEBUG1_SetAnalogMode()      do { ANSELEbits.ANSELE1 = 1; } while(0)
#define DEBUG1_SetDigitalMode()     do { ANSELEbits.ANSELE1 = 0; } while(0)

// get/set DEBUG2 aliases
#define DEBUG2_TRIS                 TRISEbits.TRISE2
#define DEBUG2_LAT                  LATEbits.LATE2
#define DEBUG2_PORT                 PORTEbits.RE2
#define DEBUG2_WPU                  WPUEbits.WPUE2
#define DEBUG2_OD                   ODCONEbits.ODCE2
#define DEBUG2_ANS                  ANSELEbits.ANSELE2
#define DEBUG2_SetHigh()            do { LATEbits.LATE2 = 1; } while(0)
#define DEBUG2_SetLow()             do { LATEbits.LATE2 = 0; } while(0)
#define DEBUG2_Toggle()             do { LATEbits.LATE2 = ~LATEbits.LATE2; } while(0)
#define DEBUG2_GetValue()           PORTEbits.RE2
#define DEBUG2_SetDigitalInput()    do { TRISEbits.TRISE2 = 1; } while(0)
#define DEBUG2_SetDigitalOutput()   do { TRISEbits.TRISE2 = 0; } while(0)
#define DEBUG2_SetPullup()          do { WPUEbits.WPUE2 = 1; } while(0)
#define DEBUG2_ResetPullup()        do { WPUEbits.WPUE2 = 0; } while(0)
#define DEBUG2_SetPushPull()        do { ODCONEbits.ODCE2 = 0; } while(0)
#define DEBUG2_SetOpenDrain()       do { ODCONEbits.ODCE2 = 1; } while(0)
#define DEBUG2_SetAnalogMode()      do { ANSELEbits.ANSELE2 = 1; } while(0)
#define DEBUG2_SetDigitalMode()     do { ANSELEbits.ANSELE2 = 0; } while(0)

// get/set IO_RF0 aliases
#define IO_RF0_TRIS                 TRISFbits.TRISF0
#define IO_RF0_LAT                  LATFbits.LATF0
#define IO_RF0_PORT                 PORTFbits.RF0
#define IO_RF0_WPU                  WPUFbits.WPUF0
#define IO_RF0_OD                   ODCONFbits.ODCF0
#define IO_RF0_ANS                  ANSELFbits.ANSELF0
#define IO_RF0_SetHigh()            do { LATFbits.LATF0 = 1; } while(0)
#define IO_RF0_SetLow()             do { LATFbits.LATF0 = 0; } while(0)
#define IO_RF0_Toggle()             do { LATFbits.LATF0 = ~LATFbits.LATF0; } while(0)
#define IO_RF0_GetValue()           PORTFbits.RF0
#define IO_RF0_SetDigitalInput()    do { TRISFbits.TRISF0 = 1; } while(0)
#define IO_RF0_SetDigitalOutput()   do { TRISFbits.TRISF0 = 0; } while(0)
#define IO_RF0_SetPullup()          do { WPUFbits.WPUF0 = 1; } while(0)
#define IO_RF0_ResetPullup()        do { WPUFbits.WPUF0 = 0; } while(0)
#define IO_RF0_SetPushPull()        do { ODCONFbits.ODCF0 = 0; } while(0)
#define IO_RF0_SetOpenDrain()       do { ODCONFbits.ODCF0 = 1; } while(0)
#define IO_RF0_SetAnalogMode()      do { ANSELFbits.ANSELF0 = 1; } while(0)
#define IO_RF0_SetDigitalMode()     do { ANSELFbits.ANSELF0 = 0; } while(0)

// get/set IO_RF1 aliases
#define IO_RF1_TRIS                 TRISFbits.TRISF1
#define IO_RF1_LAT                  LATFbits.LATF1
#define IO_RF1_PORT                 PORTFbits.RF1
#define IO_RF1_WPU                  WPUFbits.WPUF1
#define IO_RF1_OD                   ODCONFbits.ODCF1
#define IO_RF1_ANS                  ANSELFbits.ANSELF1
#define IO_RF1_SetHigh()            do { LATFbits.LATF1 = 1; } while(0)
#define IO_RF1_SetLow()             do { LATFbits.LATF1 = 0; } while(0)
#define IO_RF1_Toggle()             do { LATFbits.LATF1 = ~LATFbits.LATF1; } while(0)
#define IO_RF1_GetValue()           PORTFbits.RF1
#define IO_RF1_SetDigitalInput()    do { TRISFbits.TRISF1 = 1; } while(0)
#define IO_RF1_SetDigitalOutput()   do { TRISFbits.TRISF1 = 0; } while(0)
#define IO_RF1_SetPullup()          do { WPUFbits.WPUF1 = 1; } while(0)
#define IO_RF1_ResetPullup()        do { WPUFbits.WPUF1 = 0; } while(0)
#define IO_RF1_SetPushPull()        do { ODCONFbits.ODCF1 = 0; } while(0)
#define IO_RF1_SetOpenDrain()       do { ODCONFbits.ODCF1 = 1; } while(0)
#define IO_RF1_SetAnalogMode()      do { ANSELFbits.ANSELF1 = 1; } while(0)
#define IO_RF1_SetDigitalMode()     do { ANSELFbits.ANSELF1 = 0; } while(0)

// get/set IO_RF2 aliases
#define IO_RF2_TRIS                 TRISFbits.TRISF2
#define IO_RF2_LAT                  LATFbits.LATF2
#define IO_RF2_PORT                 PORTFbits.RF2
#define IO_RF2_WPU                  WPUFbits.WPUF2
#define IO_RF2_OD                   ODCONFbits.ODCF2
#define IO_RF2_ANS                  ANSELFbits.ANSELF2
#define IO_RF2_SetHigh()            do { LATFbits.LATF2 = 1; } while(0)
#define IO_RF2_SetLow()             do { LATFbits.LATF2 = 0; } while(0)
#define IO_RF2_Toggle()             do { LATFbits.LATF2 = ~LATFbits.LATF2; } while(0)
#define IO_RF2_GetValue()           PORTFbits.RF2
#define IO_RF2_SetDigitalInput()    do { TRISFbits.TRISF2 = 1; } while(0)
#define IO_RF2_SetDigitalOutput()   do { TRISFbits.TRISF2 = 0; } while(0)
#define IO_RF2_SetPullup()          do { WPUFbits.WPUF2 = 1; } while(0)
#define IO_RF2_ResetPullup()        do { WPUFbits.WPUF2 = 0; } while(0)
#define IO_RF2_SetPushPull()        do { ODCONFbits.ODCF2 = 0; } while(0)
#define IO_RF2_SetOpenDrain()       do { ODCONFbits.ODCF2 = 1; } while(0)
#define IO_RF2_SetAnalogMode()      do { ANSELFbits.ANSELF2 = 1; } while(0)
#define IO_RF2_SetDigitalMode()     do { ANSELFbits.ANSELF2 = 0; } while(0)

// get/set IO_RF3 aliases
#define IO_RF3_TRIS                 TRISFbits.TRISF3
#define IO_RF3_LAT                  LATFbits.LATF3
#define IO_RF3_PORT                 PORTFbits.RF3
#define IO_RF3_WPU                  WPUFbits.WPUF3
#define IO_RF3_OD                   ODCONFbits.ODCF3
#define IO_RF3_ANS                  ANSELFbits.ANSELF3
#define IO_RF3_SetHigh()            do { LATFbits.LATF3 = 1; } while(0)
#define IO_RF3_SetLow()             do { LATFbits.LATF3 = 0; } while(0)
#define IO_RF3_Toggle()             do { LATFbits.LATF3 = ~LATFbits.LATF3; } while(0)
#define IO_RF3_GetValue()           PORTFbits.RF3
#define IO_RF3_SetDigitalInput()    do { TRISFbits.TRISF3 = 1; } while(0)
#define IO_RF3_SetDigitalOutput()   do { TRISFbits.TRISF3 = 0; } while(0)
#define IO_RF3_SetPullup()          do { WPUFbits.WPUF3 = 1; } while(0)
#define IO_RF3_ResetPullup()        do { WPUFbits.WPUF3 = 0; } while(0)
#define IO_RF3_SetPushPull()        do { ODCONFbits.ODCF3 = 0; } while(0)
#define IO_RF3_SetOpenDrain()       do { ODCONFbits.ODCF3 = 1; } while(0)
#define IO_RF3_SetAnalogMode()      do { ANSELFbits.ANSELF3 = 1; } while(0)
#define IO_RF3_SetDigitalMode()     do { ANSELFbits.ANSELF3 = 0; } while(0)

// get/set IO_RF4 aliases
#define IO_RF4_TRIS                 TRISFbits.TRISF4
#define IO_RF4_LAT                  LATFbits.LATF4
#define IO_RF4_PORT                 PORTFbits.RF4
#define IO_RF4_WPU                  WPUFbits.WPUF4
#define IO_RF4_OD                   ODCONFbits.ODCF4
#define IO_RF4_ANS                  ANSELFbits.ANSELF4
#define IO_RF4_SetHigh()            do { LATFbits.LATF4 = 1; } while(0)
#define IO_RF4_SetLow()             do { LATFbits.LATF4 = 0; } while(0)
#define IO_RF4_Toggle()             do { LATFbits.LATF4 = ~LATFbits.LATF4; } while(0)
#define IO_RF4_GetValue()           PORTFbits.RF4
#define IO_RF4_SetDigitalInput()    do { TRISFbits.TRISF4 = 1; } while(0)
#define IO_RF4_SetDigitalOutput()   do { TRISFbits.TRISF4 = 0; } while(0)
#define IO_RF4_SetPullup()          do { WPUFbits.WPUF4 = 1; } while(0)
#define IO_RF4_ResetPullup()        do { WPUFbits.WPUF4 = 0; } while(0)
#define IO_RF4_SetPushPull()        do { ODCONFbits.ODCF4 = 0; } while(0)
#define IO_RF4_SetOpenDrain()       do { ODCONFbits.ODCF4 = 1; } while(0)
#define IO_RF4_SetAnalogMode()      do { ANSELFbits.ANSELF4 = 1; } while(0)
#define IO_RF4_SetDigitalMode()     do { ANSELFbits.ANSELF4 = 0; } while(0)

// get/set IO_RF5 aliases
#define IO_RF5_TRIS                 TRISFbits.TRISF5
#define IO_RF5_LAT                  LATFbits.LATF5
#define IO_RF5_PORT                 PORTFbits.RF5
#define IO_RF5_WPU                  WPUFbits.WPUF5
#define IO_RF5_OD                   ODCONFbits.ODCF5
#define IO_RF5_ANS                  ANSELFbits.ANSELF5
#define IO_RF5_SetHigh()            do { LATFbits.LATF5 = 1; } while(0)
#define IO_RF5_SetLow()             do { LATFbits.LATF5 = 0; } while(0)
#define IO_RF5_Toggle()             do { LATFbits.LATF5 = ~LATFbits.LATF5; } while(0)
#define IO_RF5_GetValue()           PORTFbits.RF5
#define IO_RF5_SetDigitalInput()    do { TRISFbits.TRISF5 = 1; } while(0)
#define IO_RF5_SetDigitalOutput()   do { TRISFbits.TRISF5 = 0; } while(0)
#define IO_RF5_SetPullup()          do { WPUFbits.WPUF5 = 1; } while(0)
#define IO_RF5_ResetPullup()        do { WPUFbits.WPUF5 = 0; } while(0)
#define IO_RF5_SetPushPull()        do { ODCONFbits.ODCF5 = 0; } while(0)
#define IO_RF5_SetOpenDrain()       do { ODCONFbits.ODCF5 = 1; } while(0)
#define IO_RF5_SetAnalogMode()      do { ANSELFbits.ANSELF5 = 1; } while(0)
#define IO_RF5_SetDigitalMode()     do { ANSELFbits.ANSELF5 = 0; } while(0)

// get/set IO_RF6 aliases
#define IO_RF6_TRIS                 TRISFbits.TRISF6
#define IO_RF6_LAT                  LATFbits.LATF6
#define IO_RF6_PORT                 PORTFbits.RF6
#define IO_RF6_WPU                  WPUFbits.WPUF6
#define IO_RF6_OD                   ODCONFbits.ODCF6
#define IO_RF6_ANS                  ANSELFbits.ANSELF6
#define IO_RF6_SetHigh()            do { LATFbits.LATF6 = 1; } while(0)
#define IO_RF6_SetLow()             do { LATFbits.LATF6 = 0; } while(0)
#define IO_RF6_Toggle()             do { LATFbits.LATF6 = ~LATFbits.LATF6; } while(0)
#define IO_RF6_GetValue()           PORTFbits.RF6
#define IO_RF6_SetDigitalInput()    do { TRISFbits.TRISF6 = 1; } while(0)
#define IO_RF6_SetDigitalOutput()   do { TRISFbits.TRISF6 = 0; } while(0)
#define IO_RF6_SetPullup()          do { WPUFbits.WPUF6 = 1; } while(0)
#define IO_RF6_ResetPullup()        do { WPUFbits.WPUF6 = 0; } while(0)
#define IO_RF6_SetPushPull()        do { ODCONFbits.ODCF6 = 0; } while(0)
#define IO_RF6_SetOpenDrain()       do { ODCONFbits.ODCF6 = 1; } while(0)
#define IO_RF6_SetAnalogMode()      do { ANSELFbits.ANSELF6 = 1; } while(0)
#define IO_RF6_SetDigitalMode()     do { ANSELFbits.ANSELF6 = 0; } while(0)

// get/set IO_RF7 aliases
#define IO_RF7_TRIS                 TRISFbits.TRISF7
#define IO_RF7_LAT                  LATFbits.LATF7
#define IO_RF7_PORT                 PORTFbits.RF7
#define IO_RF7_WPU                  WPUFbits.WPUF7
#define IO_RF7_OD                   ODCONFbits.ODCF7
#define IO_RF7_ANS                  ANSELFbits.ANSELF7
#define IO_RF7_SetHigh()            do { LATFbits.LATF7 = 1; } while(0)
#define IO_RF7_SetLow()             do { LATFbits.LATF7 = 0; } while(0)
#define IO_RF7_Toggle()             do { LATFbits.LATF7 = ~LATFbits.LATF7; } while(0)
#define IO_RF7_GetValue()           PORTFbits.RF7
#define IO_RF7_SetDigitalInput()    do { TRISFbits.TRISF7 = 1; } while(0)
#define IO_RF7_SetDigitalOutput()   do { TRISFbits.TRISF7 = 0; } while(0)
#define IO_RF7_SetPullup()          do { WPUFbits.WPUF7 = 1; } while(0)
#define IO_RF7_ResetPullup()        do { WPUFbits.WPUF7 = 0; } while(0)
#define IO_RF7_SetPushPull()        do { ODCONFbits.ODCF7 = 0; } while(0)
#define IO_RF7_SetOpenDrain()       do { ODCONFbits.ODCF7 = 1; } while(0)
#define IO_RF7_SetAnalogMode()      do { ANSELFbits.ANSELF7 = 1; } while(0)
#define IO_RF7_SetDigitalMode()     do { ANSELFbits.ANSELF7 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);




#endif // PIN_MANAGER_H
/**
 End of File
*/