/**
  ADC Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    adc.c

  @Summary
    This is the generated driver implementation file for the ADC driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides implementations for driver APIs for ADC.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.8
        Device            :  PIC18F47Q84
        Driver Version    :  1.0.0
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.36 and above
        MPLAB             :  MPLAB X 6.00
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

/**
  Section: Included Files
*/

#include <xc.h>
#include "adc.h"

//Pointers to ADC interrupt handlers
//User can use them in application code to initialize with custom ISRs
static void (*ADC_ConversionComplete_ISR)(void);
static void (*ADC_Context1Thereshld_ISR)(void);
static void (*ADC_ActiveClockTuning_ISR)(void);

static void ADC_DefaultADI_ISR(void);
static void ADC_DefaultContext1Threshold_ISR(void);
static void ADC_DefaultActiveClockTuning_ISR(void);


void ADC_Initialize(void)
{
    //ADACT disabled; 
    ADACT = 0x00;

    //ADCCS FOSC/8; 
    ADCLK = 0x03;
    
    //ADC charge pump control
    ADCP = 0x00;
    

    /****************************************
     *         Configure Context-1          *
     ****************************************/
    ADCTX = 0x0;

    //ADLTHL 0; 
    ADLTHL = 0x00;

    //ADLTHH 0; 
    ADLTHH = 0x00;

    //ADUTHL 0; 
    ADUTHL = 0x00;

    //ADUTHH 0; 
    ADUTHH = 0x00;

    //ADSTPTL 0; 
    ADSTPTL = 0x00;

    //ADSTPTH 0; 
    ADSTPTH = 0x00;

    //ADACCL 0; 
    ADACCL = 0x00;

    //ADACCH 0; 
    ADACCH = 0x00;

    //ADACCU 0; 
    ADACCU = 0x00;

    //ADCNT 0; 
    ADCNT = 0x00;

    //ADRPT 0; 
    ADRPT = 0x00;

    //ADRESL 0; 
    ADRESL = 0x00;

    //ADRESH 0; 
    ADRESH = 0x00;

    //ADCHS ANA0; 
    ADPCH = 0x00;

    //ADACQL 10; 
    ADACQL = 0x0A;

    //ADACQH 0; 
    ADACQH = 0x00;

    //ADCAP Additional uC disabled; 
    ADCAP = 0x00;

    //ADPREL 0; 
    ADPREL = 0x00;

    //ADPREH 0; 
    ADPREH = 0x00;
    
    //ADCONT disabled; 
    ADCON0 = 0x00;

    //ADPPOL Vss; ADIPEN disabled; ADGPOL digital_low; ADDSEN disabled; 
    ADCON1 = 0x00;

    //ADPSIS RES; ADCRS 1; ADACLR disabled; ADMD Basic_mode; 
    ADCON2 = 0x10;

    //ADCALC First derivative of Single measurement; ADSOI ADGO not cleared; ADTMD disabled; 
    ADCON3 = 0x00;

    //ADMATH registers not updated; 
    ADSTAT = 0x00;

    //ADNREF VSS; ADPREF VDD; 
    ADREF = 0x00;
    
    //CHEN channel content is not included; SSI scan sequence continues; 
    ADCSEL1 = 0x00;
    
    //Clear ADC Interrupt Flag
    PIR1bits.ADIF = 0;
    
    //Clear ADC active clock tuning interrupt flag
    PIR1bits.ACTIF = 0;
    
    //Clear ADC Context Threshold Interrupt Flag
    PIR2bits.ADCH1IF = 0;
    

    //Configure interrupt handlers
    ADC_SetADIInterruptHandler(ADC_DefaultADI_ISR);
    ADC_SetContext1ThresholdInterruptHandler(ADC_DefaultContext1Threshold_ISR);
    ADC_SetActiveClockTuningInterruptHandler(ADC_DefaultActiveClockTuning_ISR);
        
    //ADON enabled; CSEN disabled; ADCS FOSC/ADCLK; ADFM right; GO_nDONE stop; 
    ADCON0 = 0x84;
}

inline void ADC_EnableChannelSequencer(void)
{
    ADCON0bits.CSEN = 1;
}

inline void ADC_DisableChannelSequencer(void)
{
    ADCON0bits.CSEN = 0;
}

inline void ADC_StartChannelSequencer(void)
{
    ADCON0bits.GO = 1;
}

inline void ADC_SelectContext(ADC_context_t context)
{
    ADCTX = context;
}

void ADC_EnableChannelScan(ADC_context_t context)
{
    switch (context)
    {
    case CONTEXT_1:
        ADCSEL1bits.CHEN = 1;
        break;
    default:
        break;
    }
}

void ADC_DisableChannelScan(ADC_context_t context)
{
    switch (context)
    {
    case CONTEXT_1:
        ADCSEL1bits.CHEN = 0;
        break;
    default:
        break;
    }
}

void ADC_StartConversion(ADC_channel_t channel)
{
    //Select the A/D channel
    ADPCH = channel;

    //Turn ON the ADC module
    ADCON0bits.ON = 1;

    //Start the conversion
    ADCON0bits.GO = 1;
}

bool ADC_IsConversionDone(void)
{
    return (bool) (!ADCON0bits.GO);
}

adc_result_t ADC_GetConversionResult(void)
{
    //Return result of A/D conversion
    return ((adc_result_t) ((ADRESH << 8) + ADRESL));
}

adc_result_t ADC_GetSingleConversion(ADC_channel_t channel)
{
    //Select the A/D channel
    ADPCH = channel;

    //Turn ON the ADC module
    ADCON0bits.ON = 1;

    //Disable the continuous mode
    ADCON0bits.CONT = 0;

    //Start the conversion
    ADCON0bits.GO = 1;

    //Wait for the conversion to finish
    while(ADCON0bits.GO)
    {

    }

    return ((adc_result_t) ((ADRESH << 8) + ADRESL));
}

inline void ADC_StopConversion(void)
{
    //Reset the ADGO bit to manually stop conversion
    ADCON0bits.GO = 0;
}

inline void ADC_SetStopOnInterrupt(void)
{
    ADCON3bits.SOI = 1;
}

inline void ADC_DischargeSampleCapacitor(void)
{
    //Set ADC channel to AVss
    ADPCH = 0x3b;
}

void ADC_LoadAcquisitionRegister(uint16_t acquisitionValue)
{
    ADACQH = acquisitionValue >> 8;
    ADACQL = acquisitionValue;
}

void ADC_SetPrechargeTime(uint16_t prechargeTime)
{
    ADPREH = prechargeTime >> 8;
    ADPREL = prechargeTime;
}

inline void ADC_SetRepeatCount(uint8_t repeatCount)
{
    ADRPT = repeatCount;
}

uint8_t ADC_GetCurrentCountofConversions(void)
{
    return ADCNT;
}

inline void ADC_ClearAccumulator(void)
{
    ADCON2bits.ACLR = 1;
}

uint24_t ADC_GetAccumulatorValue(void)
{
    return ((uint24_t) ((ADACCH << 8) + ADACCL));
}

bool ADC_HasAccumulatorOverflowed(void)
{
    return ADSTATbits.ADAOV;
}

uint16_t ADC_GetFilterValue(void)
{
    return ((uint16_t) ((ADFLTRH << 8) + ADFLTRL));
}

uint16_t ADC_GetPreviousResult(void)
{
    return ((uint16_t) ((ADPREVH << 8) + ADPREVL));
}

void ADC_DefineSetPoint(uint16_t setPoint)
{
    ADSTPTH = setPoint >> 8;
    ADSTPTL = setPoint;
}

void ADC_SetUpperThreshold(uint16_t upperThreshold)
{
    ADUTHH = upperThreshold >> 8;
    ADUTHL = upperThreshold;
}

void ADC_SetLowerThreshold(uint16_t lowerThreshold)
{
    ADLTHH = lowerThreshold >> 8;
    ADLTHL = lowerThreshold;
}

uint16_t ADC_GetErrorCalculation(void)
{
    return ((uint16_t) ((ADERRH << 8) + ADERRL));
}

inline void ADC_EnableDoubleSampling(void)
{
    ADCON1bits.DSEN = 1;
}

inline void ADC_EnableContinuousConversion(void)
{
    ADCON0bits.CONT = 1;
}

inline void ADC_DisableContinuousConversion(void)
{
    ADCON0bits.CONT = 0;
}

bool ADC_HasErrorCrossedUpperThreshold(void)
{
    return ADSTATbits.ADUTHR;
}

bool ADC_HasErrorCrossedLowerThreshold(void)
{
    return ADSTATbits.ADLTHR;
}

uint8_t ADC_GetConversionStageStatus(void)
{
    return ADSTATbits.ADSTAT;
}

inline void ADC_EnableChargePump(void)
{
    ADCPbits.CPON = 1;
}

inline void ADC_DisableChargePump(void)
{
    ADCPbits.CPON = 0;
}

void __interrupt(irq(AD),base(8)) ADC_ADI_ISR(void)
{
    PIR1bits.ADIF = 0;
    if (ADC_ConversionComplete_ISR != NULL)
        ADC_ConversionComplete_ISR();
}

void __interrupt(irq(ACT),base(8)) ADC_ACTI_ISR(void)
{
    PIR1bits.ACTIF = 0;
    if (ADC_ActiveClockTuning_ISR != NULL)
        ADC_ActiveClockTuning_ISR();
}


void __interrupt(irq(ADCH1),base(8)) ADC_ADCH1_ISR(void)
{
    PIR2bits.ADCH1IF = 0;
    if (ADC_Context1Thereshld_ISR != NULL)
        ADC_Context1Thereshld_ISR();
}

void ADC_SetADIInterruptHandler(void (* InterruptHandler)(void))
{
    ADC_ConversionComplete_ISR = InterruptHandler;
}

void ADC_SetContext1ThresholdInterruptHandler(void (* InterruptHandler)(void))
{
    ADC_Context1Thereshld_ISR = InterruptHandler;
}

void ADC_SetActiveClockTuningInterruptHandler(void (* InterruptHandler)(void))
{
    ADC_ActiveClockTuning_ISR = InterruptHandler;
}

static void ADC_DefaultADI_ISR(void)
{
    //Add your interrupt code here or
    //Use ADC_SetADIInterruptHandler() function to use Custom ISR
}


static void ADC_DefaultContext1Threshold_ISR(void)
{
    //Add your interrupt code here or
    //Use ADC_SetContext1ThresholdInterruptHandler() function to use Custom ISR
}

static void ADC_DefaultActiveClockTuning_ISR(void)
{
    //Add your interrupt code here or
    //Use ADC_SetActiveClockTuningInterruptHandler() function to use Custom ISR
}

/**
  End of File
 */
