/**
  DSM Generated Driver API Header File

  @Company
    Microchip Technology Inc.

  @File Name
    dsm.h

  @Summary
    This is the generated header file for the DSM driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for DSM.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.65.2
        Device            :  PIC18F57K42
        Driver Version    :  2.01
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

#ifndef DSM_H
#define DSM_H

/**
  Section: Included Files
*/

#include <stdint.h>

#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif

/**
  Section: DSM APIs
*/

/**
  @Summary
    Initializes the DSM

  @Description
    This routine configures the DSM specific control registers

  @Preconditions
    None

  @Returns
    None

  @Param
    None

  @Comment

  @Example
    <code>
    DSM_Initialize();
    </code>

*/
void DSM_Initialize(void);

/**
  @Summary
    Sets the MDxCON0<BIT> high

  @Description
    This API sets the MDxCON0<BIT> high, so modulator uses carrier high signal

  @Preconditions
    DSM_Initialize() function should have been called before calling this function

  @Returns
    None

  @Param
    None

  @Example
    <code>
    DSM_Initialize();
    DSM_ManualModulationSet();
    </code>

*/
void DSM_ManualModulationSet (void);

/**
  @Summary
    Sets the MDxCON0<BIT> low

  @Description
    This API sets the MDxCON0<BIT> low, so modulator uses carrier low signal

  @Preconditions
    DSM_Initialize() function should have been called before calling this function

  @Returns
    None

  @Param
    None

  @Example
    <code>
    DSM_Initialize();
    DSM_ManualModulationClear();
    </code>

*/
void DSM_ManualModulationClear (void);
/**
  @Summary
    Toggles the MDxCON0<BIT>

  @Description
    This API toggles the MDxCON0<BIT>

  @Preconditions
    DSM_Initialize() function should have been called 
	before calling this function

  @Returns
    None

  @Param
    None

  @Example
    <code>
    DSM_Initialize();
    DSM_ManualModulationToggle();
    </code>
*/
void DSM_ManualModulationToggle (void);

/**
  @Summary
    Enables modulation

  @Description
    This API enables the modulator.

  @Preconditions
    DSM_Initialize() function should have been called 
	before calling this function

  @Returns
    None

  @Param
    None

  @Example
    <code>
    DSM_Initialize();
    DSM_ModulationStart();
    </code>
*/
void DSM_ModulationStart (void);

/**
  @Summary
    Disables modulation

  @Description
    This API disables the modulator.

  @Preconditions
    DSM_Initialize() and DSM_ModulationStart()
	functions should have been called before calling this function

  @Returns
    None

  @Param
    None

  @Example
    <code>
    DSM_Initialize();
    DSM_ModulationStart();
    ...
    DSM_ModulationStop();
    </code>
*/
void DSM_ModulationStop (void);

#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif

#endif  // DSM_H
/**
 End of File
*/
