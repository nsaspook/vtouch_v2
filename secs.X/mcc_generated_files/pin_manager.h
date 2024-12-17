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

// get/set channel_ANA0 aliases
#define channel_ANA0_TRIS                 TRISAbits.TRISA0
#define channel_ANA0_LAT                  LATAbits.LATA0
#define channel_ANA0_PORT                 PORTAbits.RA0
#define channel_ANA0_WPU                  WPUAbits.WPUA0
#define channel_ANA0_OD                   ODCONAbits.ODCA0
#define channel_ANA0_ANS                  ANSELAbits.ANSELA0
#define channel_ANA0_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define channel_ANA0_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define channel_ANA0_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define channel_ANA0_GetValue()           PORTAbits.RA0
#define channel_ANA0_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define channel_ANA0_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define channel_ANA0_SetPullup()          do { WPUAbits.WPUA0 = 1; } while(0)
#define channel_ANA0_ResetPullup()        do { WPUAbits.WPUA0 = 0; } while(0)
#define channel_ANA0_SetPushPull()        do { ODCONAbits.ODCA0 = 0; } while(0)
#define channel_ANA0_SetOpenDrain()       do { ODCONAbits.ODCA0 = 1; } while(0)
#define channel_ANA0_SetAnalogMode()      do { ANSELAbits.ANSELA0 = 1; } while(0)
#define channel_ANA0_SetDigitalMode()     do { ANSELAbits.ANSELA0 = 0; } while(0)

// get/set channel_ANA1 aliases
#define channel_ANA1_TRIS                 TRISAbits.TRISA1
#define channel_ANA1_LAT                  LATAbits.LATA1
#define channel_ANA1_PORT                 PORTAbits.RA1
#define channel_ANA1_WPU                  WPUAbits.WPUA1
#define channel_ANA1_OD                   ODCONAbits.ODCA1
#define channel_ANA1_ANS                  ANSELAbits.ANSELA1
#define channel_ANA1_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define channel_ANA1_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define channel_ANA1_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define channel_ANA1_GetValue()           PORTAbits.RA1
#define channel_ANA1_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define channel_ANA1_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define channel_ANA1_SetPullup()          do { WPUAbits.WPUA1 = 1; } while(0)
#define channel_ANA1_ResetPullup()        do { WPUAbits.WPUA1 = 0; } while(0)
#define channel_ANA1_SetPushPull()        do { ODCONAbits.ODCA1 = 0; } while(0)
#define channel_ANA1_SetOpenDrain()       do { ODCONAbits.ODCA1 = 1; } while(0)
#define channel_ANA1_SetAnalogMode()      do { ANSELAbits.ANSELA1 = 1; } while(0)
#define channel_ANA1_SetDigitalMode()     do { ANSELAbits.ANSELA1 = 0; } while(0)

// get/set channel_ANA2 aliases
#define channel_ANA2_TRIS                 TRISAbits.TRISA2
#define channel_ANA2_LAT                  LATAbits.LATA2
#define channel_ANA2_PORT                 PORTAbits.RA2
#define channel_ANA2_WPU                  WPUAbits.WPUA2
#define channel_ANA2_OD                   ODCONAbits.ODCA2
#define channel_ANA2_ANS                  ANSELAbits.ANSELA2
#define channel_ANA2_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define channel_ANA2_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define channel_ANA2_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define channel_ANA2_GetValue()           PORTAbits.RA2
#define channel_ANA2_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define channel_ANA2_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define channel_ANA2_SetPullup()          do { WPUAbits.WPUA2 = 1; } while(0)
#define channel_ANA2_ResetPullup()        do { WPUAbits.WPUA2 = 0; } while(0)
#define channel_ANA2_SetPushPull()        do { ODCONAbits.ODCA2 = 0; } while(0)
#define channel_ANA2_SetOpenDrain()       do { ODCONAbits.ODCA2 = 1; } while(0)
#define channel_ANA2_SetAnalogMode()      do { ANSELAbits.ANSELA2 = 1; } while(0)
#define channel_ANA2_SetDigitalMode()     do { ANSELAbits.ANSELA2 = 0; } while(0)

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

// get/set RA4 procedures
#define RA4_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define RA4_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define RA4_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define RA4_GetValue()              PORTAbits.RA4
#define RA4_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define RA4_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define RA4_SetPullup()             do { WPUAbits.WPUA4 = 1; } while(0)
#define RA4_ResetPullup()           do { WPUAbits.WPUA4 = 0; } while(0)
#define RA4_SetAnalogMode()         do { ANSELAbits.ANSELA4 = 1; } while(0)
#define RA4_SetDigitalMode()        do { ANSELAbits.ANSELA4 = 0; } while(0)

// get/set RA5 procedures
#define RA5_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define RA5_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define RA5_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define RA5_GetValue()              PORTAbits.RA5
#define RA5_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define RA5_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define RA5_SetPullup()             do { WPUAbits.WPUA5 = 1; } while(0)
#define RA5_ResetPullup()           do { WPUAbits.WPUA5 = 0; } while(0)
#define RA5_SetAnalogMode()         do { ANSELAbits.ANSELA5 = 1; } while(0)
#define RA5_SetDigitalMode()        do { ANSELAbits.ANSELA5 = 0; } while(0)

// get/set RA6 procedures
#define RA6_SetHigh()            do { LATAbits.LATA6 = 1; } while(0)
#define RA6_SetLow()             do { LATAbits.LATA6 = 0; } while(0)
#define RA6_Toggle()             do { LATAbits.LATA6 = ~LATAbits.LATA6; } while(0)
#define RA6_GetValue()              PORTAbits.RA6
#define RA6_SetDigitalInput()    do { TRISAbits.TRISA6 = 1; } while(0)
#define RA6_SetDigitalOutput()   do { TRISAbits.TRISA6 = 0; } while(0)
#define RA6_SetPullup()             do { WPUAbits.WPUA6 = 1; } while(0)
#define RA6_ResetPullup()           do { WPUAbits.WPUA6 = 0; } while(0)
#define RA6_SetAnalogMode()         do { ANSELAbits.ANSELA6 = 1; } while(0)
#define RA6_SetDigitalMode()        do { ANSELAbits.ANSELA6 = 0; } while(0)

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

// get/set RB2 procedures
#define RB2_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define RB2_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define RB2_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define RB2_GetValue()              PORTBbits.RB2
#define RB2_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define RB2_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define RB2_SetPullup()             do { WPUBbits.WPUB2 = 1; } while(0)
#define RB2_ResetPullup()           do { WPUBbits.WPUB2 = 0; } while(0)
#define RB2_SetAnalogMode()         do { ANSELBbits.ANSELB2 = 1; } while(0)
#define RB2_SetDigitalMode()        do { ANSELBbits.ANSELB2 = 0; } while(0)

// get/set IO_RB4 aliases
#define IO_RB4_TRIS                 TRISBbits.TRISB4
#define IO_RB4_LAT                  LATBbits.LATB4
#define IO_RB4_PORT                 PORTBbits.RB4
#define IO_RB4_WPU                  WPUBbits.WPUB4
#define IO_RB4_OD                   ODCONBbits.ODCB4
#define IO_RB4_ANS                  ANSELBbits.ANSELB4
#define IO_RB4_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define IO_RB4_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define IO_RB4_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define IO_RB4_GetValue()           PORTBbits.RB4
#define IO_RB4_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define IO_RB4_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define IO_RB4_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define IO_RB4_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define IO_RB4_SetPushPull()        do { ODCONBbits.ODCB4 = 0; } while(0)
#define IO_RB4_SetOpenDrain()       do { ODCONBbits.ODCB4 = 1; } while(0)
#define IO_RB4_SetAnalogMode()      do { ANSELBbits.ANSELB4 = 1; } while(0)
#define IO_RB4_SetDigitalMode()     do { ANSELBbits.ANSELB4 = 0; } while(0)

// get/set IO_RB5 aliases
#define IO_RB5_TRIS                 TRISBbits.TRISB5
#define IO_RB5_LAT                  LATBbits.LATB5
#define IO_RB5_PORT                 PORTBbits.RB5
#define IO_RB5_WPU                  WPUBbits.WPUB5
#define IO_RB5_OD                   ODCONBbits.ODCB5
#define IO_RB5_ANS                  ANSELBbits.ANSELB5
#define IO_RB5_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define IO_RB5_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define IO_RB5_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define IO_RB5_GetValue()           PORTBbits.RB5
#define IO_RB5_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define IO_RB5_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define IO_RB5_SetPullup()          do { WPUBbits.WPUB5 = 1; } while(0)
#define IO_RB5_ResetPullup()        do { WPUBbits.WPUB5 = 0; } while(0)
#define IO_RB5_SetPushPull()        do { ODCONBbits.ODCB5 = 0; } while(0)
#define IO_RB5_SetOpenDrain()       do { ODCONBbits.ODCB5 = 1; } while(0)
#define IO_RB5_SetAnalogMode()      do { ANSELBbits.ANSELB5 = 1; } while(0)
#define IO_RB5_SetDigitalMode()     do { ANSELBbits.ANSELB5 = 0; } while(0)

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

// get/set SW1 aliases
#define SW1_TRIS                 TRISDbits.TRISD3
#define SW1_LAT                  LATDbits.LATD3
#define SW1_PORT                 PORTDbits.RD3
#define SW1_WPU                  WPUDbits.WPUD3
#define SW1_OD                   ODCONDbits.ODCD3
#define SW1_ANS                  ANSELDbits.ANSELD3
#define SW1_SetHigh()            do { LATDbits.LATD3 = 1; } while(0)
#define SW1_SetLow()             do { LATDbits.LATD3 = 0; } while(0)
#define SW1_Toggle()             do { LATDbits.LATD3 = ~LATDbits.LATD3; } while(0)
#define SW1_GetValue()           PORTDbits.RD3
#define SW1_SetDigitalInput()    do { TRISDbits.TRISD3 = 1; } while(0)
#define SW1_SetDigitalOutput()   do { TRISDbits.TRISD3 = 0; } while(0)
#define SW1_SetPullup()          do { WPUDbits.WPUD3 = 1; } while(0)
#define SW1_ResetPullup()        do { WPUDbits.WPUD3 = 0; } while(0)
#define SW1_SetPushPull()        do { ODCONDbits.ODCD3 = 0; } while(0)
#define SW1_SetOpenDrain()       do { ODCONDbits.ODCD3 = 1; } while(0)
#define SW1_SetAnalogMode()      do { ANSELDbits.ANSELD3 = 1; } while(0)
#define SW1_SetDigitalMode()     do { ANSELDbits.ANSELD3 = 0; } while(0)

// get/set BILED1_1 aliases
#define BILED1_1_TRIS                 TRISDbits.TRISD4
#define BILED1_1_LAT                  LATDbits.LATD4
#define BILED1_1_PORT                 PORTDbits.RD4
#define BILED1_1_WPU                  WPUDbits.WPUD4
#define BILED1_1_OD                   ODCONDbits.ODCD4
#define BILED1_1_ANS                  ANSELDbits.ANSELD4
#define BILED1_1_SetHigh()            do { LATDbits.LATD4 = 1; } while(0)
#define BILED1_1_SetLow()             do { LATDbits.LATD4 = 0; } while(0)
#define BILED1_1_Toggle()             do { LATDbits.LATD4 = ~LATDbits.LATD4; } while(0)
#define BILED1_1_GetValue()           PORTDbits.RD4
#define BILED1_1_SetDigitalInput()    do { TRISDbits.TRISD4 = 1; } while(0)
#define BILED1_1_SetDigitalOutput()   do { TRISDbits.TRISD4 = 0; } while(0)
#define BILED1_1_SetPullup()          do { WPUDbits.WPUD4 = 1; } while(0)
#define BILED1_1_ResetPullup()        do { WPUDbits.WPUD4 = 0; } while(0)
#define BILED1_1_SetPushPull()        do { ODCONDbits.ODCD4 = 0; } while(0)
#define BILED1_1_SetOpenDrain()       do { ODCONDbits.ODCD4 = 1; } while(0)
#define BILED1_1_SetAnalogMode()      do { ANSELDbits.ANSELD4 = 1; } while(0)
#define BILED1_1_SetDigitalMode()     do { ANSELDbits.ANSELD4 = 0; } while(0)

// get/set BILED1_2 aliases
#define BILED1_2_TRIS                 TRISDbits.TRISD5
#define BILED1_2_LAT                  LATDbits.LATD5
#define BILED1_2_PORT                 PORTDbits.RD5
#define BILED1_2_WPU                  WPUDbits.WPUD5
#define BILED1_2_OD                   ODCONDbits.ODCD5
#define BILED1_2_ANS                  ANSELDbits.ANSELD5
#define BILED1_2_SetHigh()            do { LATDbits.LATD5 = 1; } while(0)
#define BILED1_2_SetLow()             do { LATDbits.LATD5 = 0; } while(0)
#define BILED1_2_Toggle()             do { LATDbits.LATD5 = ~LATDbits.LATD5; } while(0)
#define BILED1_2_GetValue()           PORTDbits.RD5
#define BILED1_2_SetDigitalInput()    do { TRISDbits.TRISD5 = 1; } while(0)
#define BILED1_2_SetDigitalOutput()   do { TRISDbits.TRISD5 = 0; } while(0)
#define BILED1_2_SetPullup()          do { WPUDbits.WPUD5 = 1; } while(0)
#define BILED1_2_ResetPullup()        do { WPUDbits.WPUD5 = 0; } while(0)
#define BILED1_2_SetPushPull()        do { ODCONDbits.ODCD5 = 0; } while(0)
#define BILED1_2_SetOpenDrain()       do { ODCONDbits.ODCD5 = 1; } while(0)
#define BILED1_2_SetAnalogMode()      do { ANSELDbits.ANSELD5 = 1; } while(0)
#define BILED1_2_SetDigitalMode()     do { ANSELDbits.ANSELD5 = 0; } while(0)

// get/set BILED2_1 aliases
#define BILED2_1_TRIS                 TRISDbits.TRISD6
#define BILED2_1_LAT                  LATDbits.LATD6
#define BILED2_1_PORT                 PORTDbits.RD6
#define BILED2_1_WPU                  WPUDbits.WPUD6
#define BILED2_1_OD                   ODCONDbits.ODCD6
#define BILED2_1_ANS                  ANSELDbits.ANSELD6
#define BILED2_1_SetHigh()            do { LATDbits.LATD6 = 1; } while(0)
#define BILED2_1_SetLow()             do { LATDbits.LATD6 = 0; } while(0)
#define BILED2_1_Toggle()             do { LATDbits.LATD6 = ~LATDbits.LATD6; } while(0)
#define BILED2_1_GetValue()           PORTDbits.RD6
#define BILED2_1_SetDigitalInput()    do { TRISDbits.TRISD6 = 1; } while(0)
#define BILED2_1_SetDigitalOutput()   do { TRISDbits.TRISD6 = 0; } while(0)
#define BILED2_1_SetPullup()          do { WPUDbits.WPUD6 = 1; } while(0)
#define BILED2_1_ResetPullup()        do { WPUDbits.WPUD6 = 0; } while(0)
#define BILED2_1_SetPushPull()        do { ODCONDbits.ODCD6 = 0; } while(0)
#define BILED2_1_SetOpenDrain()       do { ODCONDbits.ODCD6 = 1; } while(0)
#define BILED2_1_SetAnalogMode()      do { ANSELDbits.ANSELD6 = 1; } while(0)
#define BILED2_1_SetDigitalMode()     do { ANSELDbits.ANSELD6 = 0; } while(0)

// get/set BILED2_2 aliases
#define BILED2_2_TRIS                 TRISDbits.TRISD7
#define BILED2_2_LAT                  LATDbits.LATD7
#define BILED2_2_PORT                 PORTDbits.RD7
#define BILED2_2_WPU                  WPUDbits.WPUD7
#define BILED2_2_OD                   ODCONDbits.ODCD7
#define BILED2_2_ANS                  ANSELDbits.ANSELD7
#define BILED2_2_SetHigh()            do { LATDbits.LATD7 = 1; } while(0)
#define BILED2_2_SetLow()             do { LATDbits.LATD7 = 0; } while(0)
#define BILED2_2_Toggle()             do { LATDbits.LATD7 = ~LATDbits.LATD7; } while(0)
#define BILED2_2_GetValue()           PORTDbits.RD7
#define BILED2_2_SetDigitalInput()    do { TRISDbits.TRISD7 = 1; } while(0)
#define BILED2_2_SetDigitalOutput()   do { TRISDbits.TRISD7 = 0; } while(0)
#define BILED2_2_SetPullup()          do { WPUDbits.WPUD7 = 1; } while(0)
#define BILED2_2_ResetPullup()        do { WPUDbits.WPUD7 = 0; } while(0)
#define BILED2_2_SetPushPull()        do { ODCONDbits.ODCD7 = 0; } while(0)
#define BILED2_2_SetOpenDrain()       do { ODCONDbits.ODCD7 = 1; } while(0)
#define BILED2_2_SetAnalogMode()      do { ANSELDbits.ANSELD7 = 1; } while(0)
#define BILED2_2_SetDigitalMode()     do { ANSELDbits.ANSELD7 = 0; } while(0)

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

// get/set BILED3_1 aliases
#define BILED3_1_TRIS                 TRISFbits.TRISF4
#define BILED3_1_LAT                  LATFbits.LATF4
#define BILED3_1_PORT                 PORTFbits.RF4
#define BILED3_1_WPU                  WPUFbits.WPUF4
#define BILED3_1_OD                   ODCONFbits.ODCF4
#define BILED3_1_ANS                  ANSELFbits.ANSELF4
#define BILED3_1_SetHigh()            do { LATFbits.LATF4 = 1; } while(0)
#define BILED3_1_SetLow()             do { LATFbits.LATF4 = 0; } while(0)
#define BILED3_1_Toggle()             do { LATFbits.LATF4 = ~LATFbits.LATF4; } while(0)
#define BILED3_1_GetValue()           PORTFbits.RF4
#define BILED3_1_SetDigitalInput()    do { TRISFbits.TRISF4 = 1; } while(0)
#define BILED3_1_SetDigitalOutput()   do { TRISFbits.TRISF4 = 0; } while(0)
#define BILED3_1_SetPullup()          do { WPUFbits.WPUF4 = 1; } while(0)
#define BILED3_1_ResetPullup()        do { WPUFbits.WPUF4 = 0; } while(0)
#define BILED3_1_SetPushPull()        do { ODCONFbits.ODCF4 = 0; } while(0)
#define BILED3_1_SetOpenDrain()       do { ODCONFbits.ODCF4 = 1; } while(0)
#define BILED3_1_SetAnalogMode()      do { ANSELFbits.ANSELF4 = 1; } while(0)
#define BILED3_1_SetDigitalMode()     do { ANSELFbits.ANSELF4 = 0; } while(0)

// get/set BILED3_2 aliases
#define BILED3_2_TRIS                 TRISFbits.TRISF5
#define BILED3_2_LAT                  LATFbits.LATF5
#define BILED3_2_PORT                 PORTFbits.RF5
#define BILED3_2_WPU                  WPUFbits.WPUF5
#define BILED3_2_OD                   ODCONFbits.ODCF5
#define BILED3_2_ANS                  ANSELFbits.ANSELF5
#define BILED3_2_SetHigh()            do { LATFbits.LATF5 = 1; } while(0)
#define BILED3_2_SetLow()             do { LATFbits.LATF5 = 0; } while(0)
#define BILED3_2_Toggle()             do { LATFbits.LATF5 = ~LATFbits.LATF5; } while(0)
#define BILED3_2_GetValue()           PORTFbits.RF5
#define BILED3_2_SetDigitalInput()    do { TRISFbits.TRISF5 = 1; } while(0)
#define BILED3_2_SetDigitalOutput()   do { TRISFbits.TRISF5 = 0; } while(0)
#define BILED3_2_SetPullup()          do { WPUFbits.WPUF5 = 1; } while(0)
#define BILED3_2_ResetPullup()        do { WPUFbits.WPUF5 = 0; } while(0)
#define BILED3_2_SetPushPull()        do { ODCONFbits.ODCF5 = 0; } while(0)
#define BILED3_2_SetOpenDrain()       do { ODCONFbits.ODCF5 = 1; } while(0)
#define BILED3_2_SetAnalogMode()      do { ANSELFbits.ANSELF5 = 1; } while(0)
#define BILED3_2_SetDigitalMode()     do { ANSELFbits.ANSELF5 = 0; } while(0)

// get/set BILED4_1 aliases
#define BILED4_1_TRIS                 TRISFbits.TRISF6
#define BILED4_1_LAT                  LATFbits.LATF6
#define BILED4_1_PORT                 PORTFbits.RF6
#define BILED4_1_WPU                  WPUFbits.WPUF6
#define BILED4_1_OD                   ODCONFbits.ODCF6
#define BILED4_1_ANS                  ANSELFbits.ANSELF6
#define BILED4_1_SetHigh()            do { LATFbits.LATF6 = 1; } while(0)
#define BILED4_1_SetLow()             do { LATFbits.LATF6 = 0; } while(0)
#define BILED4_1_Toggle()             do { LATFbits.LATF6 = ~LATFbits.LATF6; } while(0)
#define BILED4_1_GetValue()           PORTFbits.RF6
#define BILED4_1_SetDigitalInput()    do { TRISFbits.TRISF6 = 1; } while(0)
#define BILED4_1_SetDigitalOutput()   do { TRISFbits.TRISF6 = 0; } while(0)
#define BILED4_1_SetPullup()          do { WPUFbits.WPUF6 = 1; } while(0)
#define BILED4_1_ResetPullup()        do { WPUFbits.WPUF6 = 0; } while(0)
#define BILED4_1_SetPushPull()        do { ODCONFbits.ODCF6 = 0; } while(0)
#define BILED4_1_SetOpenDrain()       do { ODCONFbits.ODCF6 = 1; } while(0)
#define BILED4_1_SetAnalogMode()      do { ANSELFbits.ANSELF6 = 1; } while(0)
#define BILED4_1_SetDigitalMode()     do { ANSELFbits.ANSELF6 = 0; } while(0)

// get/set BILED4_2 aliases
#define BILED4_2_TRIS                 TRISFbits.TRISF7
#define BILED4_2_LAT                  LATFbits.LATF7
#define BILED4_2_PORT                 PORTFbits.RF7
#define BILED4_2_WPU                  WPUFbits.WPUF7
#define BILED4_2_OD                   ODCONFbits.ODCF7
#define BILED4_2_ANS                  ANSELFbits.ANSELF7
#define BILED4_2_SetHigh()            do { LATFbits.LATF7 = 1; } while(0)
#define BILED4_2_SetLow()             do { LATFbits.LATF7 = 0; } while(0)
#define BILED4_2_Toggle()             do { LATFbits.LATF7 = ~LATFbits.LATF7; } while(0)
#define BILED4_2_GetValue()           PORTFbits.RF7
#define BILED4_2_SetDigitalInput()    do { TRISFbits.TRISF7 = 1; } while(0)
#define BILED4_2_SetDigitalOutput()   do { TRISFbits.TRISF7 = 0; } while(0)
#define BILED4_2_SetPullup()          do { WPUFbits.WPUF7 = 1; } while(0)
#define BILED4_2_ResetPullup()        do { WPUFbits.WPUF7 = 0; } while(0)
#define BILED4_2_SetPushPull()        do { ODCONFbits.ODCF7 = 0; } while(0)
#define BILED4_2_SetOpenDrain()       do { ODCONFbits.ODCF7 = 1; } while(0)
#define BILED4_2_SetAnalogMode()      do { ANSELFbits.ANSELF7 = 1; } while(0)
#define BILED4_2_SetDigitalMode()     do { ANSELFbits.ANSELF7 = 0; } while(0)

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