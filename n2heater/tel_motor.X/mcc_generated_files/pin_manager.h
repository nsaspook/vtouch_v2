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
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.4
        Device            :  PIC18F47K42
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.20 and above
        MPLAB 	          :  MPLAB X 5.40	
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

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set OM_SPEED aliases
#define OM_SPEED_TRIS                 TRISAbits.TRISA0
#define OM_SPEED_LAT                  LATAbits.LATA0
#define OM_SPEED_PORT                 PORTAbits.RA0
#define OM_SPEED_WPU                  WPUAbits.WPUA0
#define OM_SPEED_OD                   ODCONAbits.ODCA0
#define OM_SPEED_ANS                  ANSELAbits.ANSELA0
#define OM_SPEED_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define OM_SPEED_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define OM_SPEED_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define OM_SPEED_GetValue()           PORTAbits.RA0
#define OM_SPEED_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define OM_SPEED_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define OM_SPEED_SetPullup()          do { WPUAbits.WPUA0 = 1; } while(0)
#define OM_SPEED_ResetPullup()        do { WPUAbits.WPUA0 = 0; } while(0)
#define OM_SPEED_SetPushPull()        do { ODCONAbits.ODCA0 = 0; } while(0)
#define OM_SPEED_SetOpenDrain()       do { ODCONAbits.ODCA0 = 1; } while(0)
#define OM_SPEED_SetAnalogMode()      do { ANSELAbits.ANSELA0 = 1; } while(0)
#define OM_SPEED_SetDigitalMode()     do { ANSELAbits.ANSELA0 = 0; } while(0)

// get/set OM_ERROR aliases
#define OM_ERROR_TRIS                 TRISAbits.TRISA1
#define OM_ERROR_LAT                  LATAbits.LATA1
#define OM_ERROR_PORT                 PORTAbits.RA1
#define OM_ERROR_WPU                  WPUAbits.WPUA1
#define OM_ERROR_OD                   ODCONAbits.ODCA1
#define OM_ERROR_ANS                  ANSELAbits.ANSELA1
#define OM_ERROR_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define OM_ERROR_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define OM_ERROR_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define OM_ERROR_GetValue()           PORTAbits.RA1
#define OM_ERROR_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define OM_ERROR_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define OM_ERROR_SetPullup()          do { WPUAbits.WPUA1 = 1; } while(0)
#define OM_ERROR_ResetPullup()        do { WPUAbits.WPUA1 = 0; } while(0)
#define OM_ERROR_SetPushPull()        do { ODCONAbits.ODCA1 = 0; } while(0)
#define OM_ERROR_SetOpenDrain()       do { ODCONAbits.ODCA1 = 1; } while(0)
#define OM_ERROR_SetAnalogMode()      do { ANSELAbits.ANSELA1 = 1; } while(0)
#define OM_ERROR_SetDigitalMode()     do { ANSELAbits.ANSELA1 = 0; } while(0)

// get/set BUTTON2 aliases
#define BUTTON2_TRIS                 TRISAbits.TRISA2
#define BUTTON2_LAT                  LATAbits.LATA2
#define BUTTON2_PORT                 PORTAbits.RA2
#define BUTTON2_WPU                  WPUAbits.WPUA2
#define BUTTON2_OD                   ODCONAbits.ODCA2
#define BUTTON2_ANS                  ANSELAbits.ANSELA2
#define BUTTON2_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define BUTTON2_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define BUTTON2_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define BUTTON2_GetValue()           PORTAbits.RA2
#define BUTTON2_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define BUTTON2_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define BUTTON2_SetPullup()          do { WPUAbits.WPUA2 = 1; } while(0)
#define BUTTON2_ResetPullup()        do { WPUAbits.WPUA2 = 0; } while(0)
#define BUTTON2_SetPushPull()        do { ODCONAbits.ODCA2 = 0; } while(0)
#define BUTTON2_SetOpenDrain()       do { ODCONAbits.ODCA2 = 1; } while(0)
#define BUTTON2_SetAnalogMode()      do { ANSELAbits.ANSELA2 = 1; } while(0)
#define BUTTON2_SetDigitalMode()     do { ANSELAbits.ANSELA2 = 0; } while(0)

// get/set BUTTON1 aliases
#define BUTTON1_TRIS                 TRISAbits.TRISA3
#define BUTTON1_LAT                  LATAbits.LATA3
#define BUTTON1_PORT                 PORTAbits.RA3
#define BUTTON1_WPU                  WPUAbits.WPUA3
#define BUTTON1_OD                   ODCONAbits.ODCA3
#define BUTTON1_ANS                  ANSELAbits.ANSELA3
#define BUTTON1_SetHigh()            do { LATAbits.LATA3 = 1; } while(0)
#define BUTTON1_SetLow()             do { LATAbits.LATA3 = 0; } while(0)
#define BUTTON1_Toggle()             do { LATAbits.LATA3 = ~LATAbits.LATA3; } while(0)
#define BUTTON1_GetValue()           PORTAbits.RA3
#define BUTTON1_SetDigitalInput()    do { TRISAbits.TRISA3 = 1; } while(0)
#define BUTTON1_SetDigitalOutput()   do { TRISAbits.TRISA3 = 0; } while(0)
#define BUTTON1_SetPullup()          do { WPUAbits.WPUA3 = 1; } while(0)
#define BUTTON1_ResetPullup()        do { WPUAbits.WPUA3 = 0; } while(0)
#define BUTTON1_SetPushPull()        do { ODCONAbits.ODCA3 = 0; } while(0)
#define BUTTON1_SetOpenDrain()       do { ODCONAbits.ODCA3 = 1; } while(0)
#define BUTTON1_SetAnalogMode()      do { ANSELAbits.ANSELA3 = 1; } while(0)
#define BUTTON1_SetDigitalMode()     do { ANSELAbits.ANSELA3 = 0; } while(0)

// get/set LED1 aliases
#define LED1_TRIS                 TRISAbits.TRISA4
#define LED1_LAT                  LATAbits.LATA4
#define LED1_PORT                 PORTAbits.RA4
#define LED1_WPU                  WPUAbits.WPUA4
#define LED1_OD                   ODCONAbits.ODCA4
#define LED1_ANS                  ANSELAbits.ANSELA4
#define LED1_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define LED1_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define LED1_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define LED1_GetValue()           PORTAbits.RA4
#define LED1_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define LED1_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define LED1_SetPullup()          do { WPUAbits.WPUA4 = 1; } while(0)
#define LED1_ResetPullup()        do { WPUAbits.WPUA4 = 0; } while(0)
#define LED1_SetPushPull()        do { ODCONAbits.ODCA4 = 0; } while(0)
#define LED1_SetOpenDrain()       do { ODCONAbits.ODCA4 = 1; } while(0)
#define LED1_SetAnalogMode()      do { ANSELAbits.ANSELA4 = 1; } while(0)
#define LED1_SetDigitalMode()     do { ANSELAbits.ANSELA4 = 0; } while(0)

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

// get/set OM_PULSE aliases
#define OM_PULSE_TRIS                 TRISAbits.TRISA6
#define OM_PULSE_LAT                  LATAbits.LATA6
#define OM_PULSE_PORT                 PORTAbits.RA6
#define OM_PULSE_WPU                  WPUAbits.WPUA6
#define OM_PULSE_OD                   ODCONAbits.ODCA6
#define OM_PULSE_ANS                  ANSELAbits.ANSELA6
#define OM_PULSE_SetHigh()            do { LATAbits.LATA6 = 1; } while(0)
#define OM_PULSE_SetLow()             do { LATAbits.LATA6 = 0; } while(0)
#define OM_PULSE_Toggle()             do { LATAbits.LATA6 = ~LATAbits.LATA6; } while(0)
#define OM_PULSE_GetValue()           PORTAbits.RA6
#define OM_PULSE_SetDigitalInput()    do { TRISAbits.TRISA6 = 1; } while(0)
#define OM_PULSE_SetDigitalOutput()   do { TRISAbits.TRISA6 = 0; } while(0)
#define OM_PULSE_SetPullup()          do { WPUAbits.WPUA6 = 1; } while(0)
#define OM_PULSE_ResetPullup()        do { WPUAbits.WPUA6 = 0; } while(0)
#define OM_PULSE_SetPushPull()        do { ODCONAbits.ODCA6 = 0; } while(0)
#define OM_PULSE_SetOpenDrain()       do { ODCONAbits.ODCA6 = 1; } while(0)
#define OM_PULSE_SetAnalogMode()      do { ANSELAbits.ANSELA6 = 1; } while(0)
#define OM_PULSE_SetDigitalMode()     do { ANSELAbits.ANSELA6 = 0; } while(0)

// get/set IO_RB0 aliases
#define IO_RB0_TRIS                 TRISBbits.TRISB0
#define IO_RB0_LAT                  LATBbits.LATB0
#define IO_RB0_PORT                 PORTBbits.RB0
#define IO_RB0_WPU                  WPUBbits.WPUB0
#define IO_RB0_OD                   ODCONBbits.ODCB0
#define IO_RB0_ANS                  ANSELBbits.ANSELB0
#define IO_RB0_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define IO_RB0_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define IO_RB0_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define IO_RB0_GetValue()           PORTBbits.RB0
#define IO_RB0_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define IO_RB0_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define IO_RB0_SetPullup()          do { WPUBbits.WPUB0 = 1; } while(0)
#define IO_RB0_ResetPullup()        do { WPUBbits.WPUB0 = 0; } while(0)
#define IO_RB0_SetPushPull()        do { ODCONBbits.ODCB0 = 0; } while(0)
#define IO_RB0_SetOpenDrain()       do { ODCONBbits.ODCB0 = 1; } while(0)
#define IO_RB0_SetAnalogMode()      do { ANSELBbits.ANSELB0 = 1; } while(0)
#define IO_RB0_SetDigitalMode()     do { ANSELBbits.ANSELB0 = 0; } while(0)

// get/set IO_RB1 aliases
#define IO_RB1_TRIS                 TRISBbits.TRISB1
#define IO_RB1_LAT                  LATBbits.LATB1
#define IO_RB1_PORT                 PORTBbits.RB1
#define IO_RB1_WPU                  WPUBbits.WPUB1
#define IO_RB1_OD                   ODCONBbits.ODCB1
#define IO_RB1_ANS                  ANSELBbits.ANSELB1
#define IO_RB1_SetHigh()            do { LATBbits.LATB1 = 1; } while(0)
#define IO_RB1_SetLow()             do { LATBbits.LATB1 = 0; } while(0)
#define IO_RB1_Toggle()             do { LATBbits.LATB1 = ~LATBbits.LATB1; } while(0)
#define IO_RB1_GetValue()           PORTBbits.RB1
#define IO_RB1_SetDigitalInput()    do { TRISBbits.TRISB1 = 1; } while(0)
#define IO_RB1_SetDigitalOutput()   do { TRISBbits.TRISB1 = 0; } while(0)
#define IO_RB1_SetPullup()          do { WPUBbits.WPUB1 = 1; } while(0)
#define IO_RB1_ResetPullup()        do { WPUBbits.WPUB1 = 0; } while(0)
#define IO_RB1_SetPushPull()        do { ODCONBbits.ODCB1 = 0; } while(0)
#define IO_RB1_SetOpenDrain()       do { ODCONBbits.ODCB1 = 1; } while(0)
#define IO_RB1_SetAnalogMode()      do { ANSELBbits.ANSELB1 = 1; } while(0)
#define IO_RB1_SetDigitalMode()     do { ANSELBbits.ANSELB1 = 0; } while(0)

// get/set IO_RB2 aliases
#define IO_RB2_TRIS                 TRISBbits.TRISB2
#define IO_RB2_LAT                  LATBbits.LATB2
#define IO_RB2_PORT                 PORTBbits.RB2
#define IO_RB2_WPU                  WPUBbits.WPUB2
#define IO_RB2_OD                   ODCONBbits.ODCB2
#define IO_RB2_ANS                  ANSELBbits.ANSELB2
#define IO_RB2_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define IO_RB2_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define IO_RB2_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define IO_RB2_GetValue()           PORTBbits.RB2
#define IO_RB2_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define IO_RB2_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define IO_RB2_SetPullup()          do { WPUBbits.WPUB2 = 1; } while(0)
#define IO_RB2_ResetPullup()        do { WPUBbits.WPUB2 = 0; } while(0)
#define IO_RB2_SetPushPull()        do { ODCONBbits.ODCB2 = 0; } while(0)
#define IO_RB2_SetOpenDrain()       do { ODCONBbits.ODCB2 = 1; } while(0)
#define IO_RB2_SetAnalogMode()      do { ANSELBbits.ANSELB2 = 1; } while(0)
#define IO_RB2_SetDigitalMode()     do { ANSELBbits.ANSELB2 = 0; } while(0)

// get/set IO_RB3 aliases
#define IO_RB3_TRIS                 TRISBbits.TRISB3
#define IO_RB3_LAT                  LATBbits.LATB3
#define IO_RB3_PORT                 PORTBbits.RB3
#define IO_RB3_WPU                  WPUBbits.WPUB3
#define IO_RB3_OD                   ODCONBbits.ODCB3
#define IO_RB3_ANS                  ANSELBbits.ANSELB3
#define IO_RB3_SetHigh()            do { LATBbits.LATB3 = 1; } while(0)
#define IO_RB3_SetLow()             do { LATBbits.LATB3 = 0; } while(0)
#define IO_RB3_Toggle()             do { LATBbits.LATB3 = ~LATBbits.LATB3; } while(0)
#define IO_RB3_GetValue()           PORTBbits.RB3
#define IO_RB3_SetDigitalInput()    do { TRISBbits.TRISB3 = 1; } while(0)
#define IO_RB3_SetDigitalOutput()   do { TRISBbits.TRISB3 = 0; } while(0)
#define IO_RB3_SetPullup()          do { WPUBbits.WPUB3 = 1; } while(0)
#define IO_RB3_ResetPullup()        do { WPUBbits.WPUB3 = 0; } while(0)
#define IO_RB3_SetPushPull()        do { ODCONBbits.ODCB3 = 0; } while(0)
#define IO_RB3_SetOpenDrain()       do { ODCONBbits.ODCB3 = 1; } while(0)
#define IO_RB3_SetAnalogMode()      do { ANSELBbits.ANSELB3 = 1; } while(0)
#define IO_RB3_SetDigitalMode()     do { ANSELBbits.ANSELB3 = 0; } while(0)

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

// get/set IO_RC0 aliases
#define IO_RC0_TRIS                 TRISCbits.TRISC0
#define IO_RC0_LAT                  LATCbits.LATC0
#define IO_RC0_PORT                 PORTCbits.RC0
#define IO_RC0_WPU                  WPUCbits.WPUC0
#define IO_RC0_OD                   ODCONCbits.ODCC0
#define IO_RC0_ANS                  ANSELCbits.ANSELC0
#define IO_RC0_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define IO_RC0_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define IO_RC0_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define IO_RC0_GetValue()           PORTCbits.RC0
#define IO_RC0_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define IO_RC0_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)
#define IO_RC0_SetPullup()          do { WPUCbits.WPUC0 = 1; } while(0)
#define IO_RC0_ResetPullup()        do { WPUCbits.WPUC0 = 0; } while(0)
#define IO_RC0_SetPushPull()        do { ODCONCbits.ODCC0 = 0; } while(0)
#define IO_RC0_SetOpenDrain()       do { ODCONCbits.ODCC0 = 1; } while(0)
#define IO_RC0_SetAnalogMode()      do { ANSELCbits.ANSELC0 = 1; } while(0)
#define IO_RC0_SetDigitalMode()     do { ANSELCbits.ANSELC0 = 0; } while(0)

// get/set IO_RC1 aliases
#define IO_RC1_TRIS                 TRISCbits.TRISC1
#define IO_RC1_LAT                  LATCbits.LATC1
#define IO_RC1_PORT                 PORTCbits.RC1
#define IO_RC1_WPU                  WPUCbits.WPUC1
#define IO_RC1_OD                   ODCONCbits.ODCC1
#define IO_RC1_ANS                  ANSELCbits.ANSELC1
#define IO_RC1_SetHigh()            do { LATCbits.LATC1 = 1; } while(0)
#define IO_RC1_SetLow()             do { LATCbits.LATC1 = 0; } while(0)
#define IO_RC1_Toggle()             do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define IO_RC1_GetValue()           PORTCbits.RC1
#define IO_RC1_SetDigitalInput()    do { TRISCbits.TRISC1 = 1; } while(0)
#define IO_RC1_SetDigitalOutput()   do { TRISCbits.TRISC1 = 0; } while(0)
#define IO_RC1_SetPullup()          do { WPUCbits.WPUC1 = 1; } while(0)
#define IO_RC1_ResetPullup()        do { WPUCbits.WPUC1 = 0; } while(0)
#define IO_RC1_SetPushPull()        do { ODCONCbits.ODCC1 = 0; } while(0)
#define IO_RC1_SetOpenDrain()       do { ODCONCbits.ODCC1 = 1; } while(0)
#define IO_RC1_SetAnalogMode()      do { ANSELCbits.ANSELC1 = 1; } while(0)
#define IO_RC1_SetDigitalMode()     do { ANSELCbits.ANSELC1 = 0; } while(0)

// get/set IO_RC2 aliases
#define IO_RC2_TRIS                 TRISCbits.TRISC2
#define IO_RC2_LAT                  LATCbits.LATC2
#define IO_RC2_PORT                 PORTCbits.RC2
#define IO_RC2_WPU                  WPUCbits.WPUC2
#define IO_RC2_OD                   ODCONCbits.ODCC2
#define IO_RC2_ANS                  ANSELCbits.ANSELC2
#define IO_RC2_SetHigh()            do { LATCbits.LATC2 = 1; } while(0)
#define IO_RC2_SetLow()             do { LATCbits.LATC2 = 0; } while(0)
#define IO_RC2_Toggle()             do { LATCbits.LATC2 = ~LATCbits.LATC2; } while(0)
#define IO_RC2_GetValue()           PORTCbits.RC2
#define IO_RC2_SetDigitalInput()    do { TRISCbits.TRISC2 = 1; } while(0)
#define IO_RC2_SetDigitalOutput()   do { TRISCbits.TRISC2 = 0; } while(0)
#define IO_RC2_SetPullup()          do { WPUCbits.WPUC2 = 1; } while(0)
#define IO_RC2_ResetPullup()        do { WPUCbits.WPUC2 = 0; } while(0)
#define IO_RC2_SetPushPull()        do { ODCONCbits.ODCC2 = 0; } while(0)
#define IO_RC2_SetOpenDrain()       do { ODCONCbits.ODCC2 = 1; } while(0)
#define IO_RC2_SetAnalogMode()      do { ANSELCbits.ANSELC2 = 1; } while(0)
#define IO_RC2_SetDigitalMode()     do { ANSELCbits.ANSELC2 = 0; } while(0)

// get/set IO_RC3 aliases
#define IO_RC3_TRIS                 TRISCbits.TRISC3
#define IO_RC3_LAT                  LATCbits.LATC3
#define IO_RC3_PORT                 PORTCbits.RC3
#define IO_RC3_WPU                  WPUCbits.WPUC3
#define IO_RC3_OD                   ODCONCbits.ODCC3
#define IO_RC3_ANS                  ANSELCbits.ANSELC3
#define IO_RC3_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define IO_RC3_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define IO_RC3_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define IO_RC3_GetValue()           PORTCbits.RC3
#define IO_RC3_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define IO_RC3_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)
#define IO_RC3_SetPullup()          do { WPUCbits.WPUC3 = 1; } while(0)
#define IO_RC3_ResetPullup()        do { WPUCbits.WPUC3 = 0; } while(0)
#define IO_RC3_SetPushPull()        do { ODCONCbits.ODCC3 = 0; } while(0)
#define IO_RC3_SetOpenDrain()       do { ODCONCbits.ODCC3 = 1; } while(0)
#define IO_RC3_SetAnalogMode()      do { ANSELCbits.ANSELC3 = 1; } while(0)
#define IO_RC3_SetDigitalMode()     do { ANSELCbits.ANSELC3 = 0; } while(0)

// get/set IO_RC4 aliases
#define IO_RC4_TRIS                 TRISCbits.TRISC4
#define IO_RC4_LAT                  LATCbits.LATC4
#define IO_RC4_PORT                 PORTCbits.RC4
#define IO_RC4_WPU                  WPUCbits.WPUC4
#define IO_RC4_OD                   ODCONCbits.ODCC4
#define IO_RC4_ANS                  ANSELCbits.ANSELC4
#define IO_RC4_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define IO_RC4_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define IO_RC4_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define IO_RC4_GetValue()           PORTCbits.RC4
#define IO_RC4_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define IO_RC4_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define IO_RC4_SetPullup()          do { WPUCbits.WPUC4 = 1; } while(0)
#define IO_RC4_ResetPullup()        do { WPUCbits.WPUC4 = 0; } while(0)
#define IO_RC4_SetPushPull()        do { ODCONCbits.ODCC4 = 0; } while(0)
#define IO_RC4_SetOpenDrain()       do { ODCONCbits.ODCC4 = 1; } while(0)
#define IO_RC4_SetAnalogMode()      do { ANSELCbits.ANSELC4 = 1; } while(0)
#define IO_RC4_SetDigitalMode()     do { ANSELCbits.ANSELC4 = 0; } while(0)

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

// get/set OM_EMO aliases
#define OM_EMO_TRIS                 TRISDbits.TRISD0
#define OM_EMO_LAT                  LATDbits.LATD0
#define OM_EMO_PORT                 PORTDbits.RD0
#define OM_EMO_WPU                  WPUDbits.WPUD0
#define OM_EMO_OD                   ODCONDbits.ODCD0
#define OM_EMO_ANS                  ANSELDbits.ANSELD0
#define OM_EMO_SetHigh()            do { LATDbits.LATD0 = 1; } while(0)
#define OM_EMO_SetLow()             do { LATDbits.LATD0 = 0; } while(0)
#define OM_EMO_Toggle()             do { LATDbits.LATD0 = ~LATDbits.LATD0; } while(0)
#define OM_EMO_GetValue()           PORTDbits.RD0
#define OM_EMO_SetDigitalInput()    do { TRISDbits.TRISD0 = 1; } while(0)
#define OM_EMO_SetDigitalOutput()   do { TRISDbits.TRISD0 = 0; } while(0)
#define OM_EMO_SetPullup()          do { WPUDbits.WPUD0 = 1; } while(0)
#define OM_EMO_ResetPullup()        do { WPUDbits.WPUD0 = 0; } while(0)
#define OM_EMO_SetPushPull()        do { ODCONDbits.ODCD0 = 0; } while(0)
#define OM_EMO_SetOpenDrain()       do { ODCONDbits.ODCD0 = 1; } while(0)
#define OM_EMO_SetAnalogMode()      do { ANSELDbits.ANSELD0 = 1; } while(0)
#define OM_EMO_SetDigitalMode()     do { ANSELDbits.ANSELD0 = 0; } while(0)

// get/set BLED2 aliases
#define BLED2_TRIS                 TRISDbits.TRISD1
#define BLED2_LAT                  LATDbits.LATD1
#define BLED2_PORT                 PORTDbits.RD1
#define BLED2_WPU                  WPUDbits.WPUD1
#define BLED2_OD                   ODCONDbits.ODCD1
#define BLED2_ANS                  ANSELDbits.ANSELD1
#define BLED2_SetHigh()            do { LATDbits.LATD1 = 1; } while(0)
#define BLED2_SetLow()             do { LATDbits.LATD1 = 0; } while(0)
#define BLED2_Toggle()             do { LATDbits.LATD1 = ~LATDbits.LATD1; } while(0)
#define BLED2_GetValue()           PORTDbits.RD1
#define BLED2_SetDigitalInput()    do { TRISDbits.TRISD1 = 1; } while(0)
#define BLED2_SetDigitalOutput()   do { TRISDbits.TRISD1 = 0; } while(0)
#define BLED2_SetPullup()          do { WPUDbits.WPUD1 = 1; } while(0)
#define BLED2_ResetPullup()        do { WPUDbits.WPUD1 = 0; } while(0)
#define BLED2_SetPushPull()        do { ODCONDbits.ODCD1 = 0; } while(0)
#define BLED2_SetOpenDrain()       do { ODCONDbits.ODCD1 = 1; } while(0)
#define BLED2_SetAnalogMode()      do { ANSELDbits.ANSELD1 = 1; } while(0)
#define BLED2_SetDigitalMode()     do { ANSELDbits.ANSELD1 = 0; } while(0)

// get/set IO_RD2 aliases
#define IO_RD2_TRIS                 TRISDbits.TRISD2
#define IO_RD2_LAT                  LATDbits.LATD2
#define IO_RD2_PORT                 PORTDbits.RD2
#define IO_RD2_WPU                  WPUDbits.WPUD2
#define IO_RD2_OD                   ODCONDbits.ODCD2
#define IO_RD2_ANS                  ANSELDbits.ANSELD2
#define IO_RD2_SetHigh()            do { LATDbits.LATD2 = 1; } while(0)
#define IO_RD2_SetLow()             do { LATDbits.LATD2 = 0; } while(0)
#define IO_RD2_Toggle()             do { LATDbits.LATD2 = ~LATDbits.LATD2; } while(0)
#define IO_RD2_GetValue()           PORTDbits.RD2
#define IO_RD2_SetDigitalInput()    do { TRISDbits.TRISD2 = 1; } while(0)
#define IO_RD2_SetDigitalOutput()   do { TRISDbits.TRISD2 = 0; } while(0)
#define IO_RD2_SetPullup()          do { WPUDbits.WPUD2 = 1; } while(0)
#define IO_RD2_ResetPullup()        do { WPUDbits.WPUD2 = 0; } while(0)
#define IO_RD2_SetPushPull()        do { ODCONDbits.ODCD2 = 0; } while(0)
#define IO_RD2_SetOpenDrain()       do { ODCONDbits.ODCD2 = 1; } while(0)
#define IO_RD2_SetAnalogMode()      do { ANSELDbits.ANSELD2 = 1; } while(0)
#define IO_RD2_SetDigitalMode()     do { ANSELDbits.ANSELD2 = 0; } while(0)

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

// get/set LED2 aliases
#define LED2_TRIS                 TRISDbits.TRISD4
#define LED2_LAT                  LATDbits.LATD4
#define LED2_PORT                 PORTDbits.RD4
#define LED2_WPU                  WPUDbits.WPUD4
#define LED2_OD                   ODCONDbits.ODCD4
#define LED2_ANS                  ANSELDbits.ANSELD4
#define LED2_SetHigh()            do { LATDbits.LATD4 = 1; } while(0)
#define LED2_SetLow()             do { LATDbits.LATD4 = 0; } while(0)
#define LED2_Toggle()             do { LATDbits.LATD4 = ~LATDbits.LATD4; } while(0)
#define LED2_GetValue()           PORTDbits.RD4
#define LED2_SetDigitalInput()    do { TRISDbits.TRISD4 = 1; } while(0)
#define LED2_SetDigitalOutput()   do { TRISDbits.TRISD4 = 0; } while(0)
#define LED2_SetPullup()          do { WPUDbits.WPUD4 = 1; } while(0)
#define LED2_ResetPullup()        do { WPUDbits.WPUD4 = 0; } while(0)
#define LED2_SetPushPull()        do { ODCONDbits.ODCD4 = 0; } while(0)
#define LED2_SetOpenDrain()       do { ODCONDbits.ODCD4 = 1; } while(0)
#define LED2_SetAnalogMode()      do { ANSELDbits.ANSELD4 = 1; } while(0)
#define LED2_SetDigitalMode()     do { ANSELDbits.ANSELD4 = 0; } while(0)

// get/set OM_ON aliases
#define OM_ON_TRIS                 TRISDbits.TRISD5
#define OM_ON_LAT                  LATDbits.LATD5
#define OM_ON_PORT                 PORTDbits.RD5
#define OM_ON_WPU                  WPUDbits.WPUD5
#define OM_ON_OD                   ODCONDbits.ODCD5
#define OM_ON_ANS                  ANSELDbits.ANSELD5
#define OM_ON_SetHigh()            do { LATDbits.LATD5 = 1; } while(0)
#define OM_ON_SetLow()             do { LATDbits.LATD5 = 0; } while(0)
#define OM_ON_Toggle()             do { LATDbits.LATD5 = ~LATDbits.LATD5; } while(0)
#define OM_ON_GetValue()           PORTDbits.RD5
#define OM_ON_SetDigitalInput()    do { TRISDbits.TRISD5 = 1; } while(0)
#define OM_ON_SetDigitalOutput()   do { TRISDbits.TRISD5 = 0; } while(0)
#define OM_ON_SetPullup()          do { WPUDbits.WPUD5 = 1; } while(0)
#define OM_ON_ResetPullup()        do { WPUDbits.WPUD5 = 0; } while(0)
#define OM_ON_SetPushPull()        do { ODCONDbits.ODCD5 = 0; } while(0)
#define OM_ON_SetOpenDrain()       do { ODCONDbits.ODCD5 = 1; } while(0)
#define OM_ON_SetAnalogMode()      do { ANSELDbits.ANSELD5 = 1; } while(0)
#define OM_ON_SetDigitalMode()     do { ANSELDbits.ANSELD5 = 0; } while(0)

// get/set OM_SLOW aliases
#define OM_SLOW_TRIS                 TRISDbits.TRISD6
#define OM_SLOW_LAT                  LATDbits.LATD6
#define OM_SLOW_PORT                 PORTDbits.RD6
#define OM_SLOW_WPU                  WPUDbits.WPUD6
#define OM_SLOW_OD                   ODCONDbits.ODCD6
#define OM_SLOW_ANS                  ANSELDbits.ANSELD6
#define OM_SLOW_SetHigh()            do { LATDbits.LATD6 = 1; } while(0)
#define OM_SLOW_SetLow()             do { LATDbits.LATD6 = 0; } while(0)
#define OM_SLOW_Toggle()             do { LATDbits.LATD6 = ~LATDbits.LATD6; } while(0)
#define OM_SLOW_GetValue()           PORTDbits.RD6
#define OM_SLOW_SetDigitalInput()    do { TRISDbits.TRISD6 = 1; } while(0)
#define OM_SLOW_SetDigitalOutput()   do { TRISDbits.TRISD6 = 0; } while(0)
#define OM_SLOW_SetPullup()          do { WPUDbits.WPUD6 = 1; } while(0)
#define OM_SLOW_ResetPullup()        do { WPUDbits.WPUD6 = 0; } while(0)
#define OM_SLOW_SetPushPull()        do { ODCONDbits.ODCD6 = 0; } while(0)
#define OM_SLOW_SetOpenDrain()       do { ODCONDbits.ODCD6 = 1; } while(0)
#define OM_SLOW_SetAnalogMode()      do { ANSELDbits.ANSELD6 = 1; } while(0)
#define OM_SLOW_SetDigitalMode()     do { ANSELDbits.ANSELD6 = 0; } while(0)

// get/set OM_FAST aliases
#define OM_FAST_TRIS                 TRISDbits.TRISD7
#define OM_FAST_LAT                  LATDbits.LATD7
#define OM_FAST_PORT                 PORTDbits.RD7
#define OM_FAST_WPU                  WPUDbits.WPUD7
#define OM_FAST_OD                   ODCONDbits.ODCD7
#define OM_FAST_ANS                  ANSELDbits.ANSELD7
#define OM_FAST_SetHigh()            do { LATDbits.LATD7 = 1; } while(0)
#define OM_FAST_SetLow()             do { LATDbits.LATD7 = 0; } while(0)
#define OM_FAST_Toggle()             do { LATDbits.LATD7 = ~LATDbits.LATD7; } while(0)
#define OM_FAST_GetValue()           PORTDbits.RD7
#define OM_FAST_SetDigitalInput()    do { TRISDbits.TRISD7 = 1; } while(0)
#define OM_FAST_SetDigitalOutput()   do { TRISDbits.TRISD7 = 0; } while(0)
#define OM_FAST_SetPullup()          do { WPUDbits.WPUD7 = 1; } while(0)
#define OM_FAST_ResetPullup()        do { WPUDbits.WPUD7 = 0; } while(0)
#define OM_FAST_SetPushPull()        do { ODCONDbits.ODCD7 = 0; } while(0)
#define OM_FAST_SetOpenDrain()       do { ODCONDbits.ODCD7 = 1; } while(0)
#define OM_FAST_SetAnalogMode()      do { ANSELDbits.ANSELD7 = 1; } while(0)
#define OM_FAST_SetDigitalMode()     do { ANSELDbits.ANSELD7 = 0; } while(0)

// get/set BLED1 aliases
#define BLED1_TRIS                 TRISEbits.TRISE0
#define BLED1_LAT                  LATEbits.LATE0
#define BLED1_PORT                 PORTEbits.RE0
#define BLED1_WPU                  WPUEbits.WPUE0
#define BLED1_OD                   ODCONEbits.ODCE0
#define BLED1_ANS                  ANSELEbits.ANSELE0
#define BLED1_SetHigh()            do { LATEbits.LATE0 = 1; } while(0)
#define BLED1_SetLow()             do { LATEbits.LATE0 = 0; } while(0)
#define BLED1_Toggle()             do { LATEbits.LATE0 = ~LATEbits.LATE0; } while(0)
#define BLED1_GetValue()           PORTEbits.RE0
#define BLED1_SetDigitalInput()    do { TRISEbits.TRISE0 = 1; } while(0)
#define BLED1_SetDigitalOutput()   do { TRISEbits.TRISE0 = 0; } while(0)
#define BLED1_SetPullup()          do { WPUEbits.WPUE0 = 1; } while(0)
#define BLED1_ResetPullup()        do { WPUEbits.WPUE0 = 0; } while(0)
#define BLED1_SetPushPull()        do { ODCONEbits.ODCE0 = 0; } while(0)
#define BLED1_SetOpenDrain()       do { ODCONEbits.ODCE0 = 1; } while(0)
#define BLED1_SetAnalogMode()      do { ANSELEbits.ANSELE0 = 1; } while(0)
#define BLED1_SetDigitalMode()     do { ANSELEbits.ANSELE0 = 0; } while(0)

// get/set IO_RE1 aliases
#define IO_RE1_TRIS                 TRISEbits.TRISE1
#define IO_RE1_LAT                  LATEbits.LATE1
#define IO_RE1_PORT                 PORTEbits.RE1
#define IO_RE1_WPU                  WPUEbits.WPUE1
#define IO_RE1_OD                   ODCONEbits.ODCE1
#define IO_RE1_ANS                  ANSELEbits.ANSELE1
#define IO_RE1_SetHigh()            do { LATEbits.LATE1 = 1; } while(0)
#define IO_RE1_SetLow()             do { LATEbits.LATE1 = 0; } while(0)
#define IO_RE1_Toggle()             do { LATEbits.LATE1 = ~LATEbits.LATE1; } while(0)
#define IO_RE1_GetValue()           PORTEbits.RE1
#define IO_RE1_SetDigitalInput()    do { TRISEbits.TRISE1 = 1; } while(0)
#define IO_RE1_SetDigitalOutput()   do { TRISEbits.TRISE1 = 0; } while(0)
#define IO_RE1_SetPullup()          do { WPUEbits.WPUE1 = 1; } while(0)
#define IO_RE1_ResetPullup()        do { WPUEbits.WPUE1 = 0; } while(0)
#define IO_RE1_SetPushPull()        do { ODCONEbits.ODCE1 = 0; } while(0)
#define IO_RE1_SetOpenDrain()       do { ODCONEbits.ODCE1 = 1; } while(0)
#define IO_RE1_SetAnalogMode()      do { ANSELEbits.ANSELE1 = 1; } while(0)
#define IO_RE1_SetDigitalMode()     do { ANSELEbits.ANSELE1 = 0; } while(0)

// get/set IO_RE2 aliases
#define IO_RE2_TRIS                 TRISEbits.TRISE2
#define IO_RE2_LAT                  LATEbits.LATE2
#define IO_RE2_PORT                 PORTEbits.RE2
#define IO_RE2_WPU                  WPUEbits.WPUE2
#define IO_RE2_OD                   ODCONEbits.ODCE2
#define IO_RE2_ANS                  ANSELEbits.ANSELE2
#define IO_RE2_SetHigh()            do { LATEbits.LATE2 = 1; } while(0)
#define IO_RE2_SetLow()             do { LATEbits.LATE2 = 0; } while(0)
#define IO_RE2_Toggle()             do { LATEbits.LATE2 = ~LATEbits.LATE2; } while(0)
#define IO_RE2_GetValue()           PORTEbits.RE2
#define IO_RE2_SetDigitalInput()    do { TRISEbits.TRISE2 = 1; } while(0)
#define IO_RE2_SetDigitalOutput()   do { TRISEbits.TRISE2 = 0; } while(0)
#define IO_RE2_SetPullup()          do { WPUEbits.WPUE2 = 1; } while(0)
#define IO_RE2_ResetPullup()        do { WPUEbits.WPUE2 = 0; } while(0)
#define IO_RE2_SetPushPull()        do { ODCONEbits.ODCE2 = 0; } while(0)
#define IO_RE2_SetOpenDrain()       do { ODCONEbits.ODCE2 = 1; } while(0)
#define IO_RE2_SetAnalogMode()      do { ANSELEbits.ANSELE2 = 1; } while(0)
#define IO_RE2_SetDigitalMode()     do { ANSELEbits.ANSELE2 = 0; } while(0)

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