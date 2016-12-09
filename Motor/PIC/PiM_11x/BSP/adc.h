
#ifndef ADC_H
#define ADC_H

#include <stdint.h>
#include <stdbool.h>

/*** ADC Channel Definitions *****************************************/
#define ADC_CHANNEL_POTENTIOMETER ADC_CHANNEL_10

typedef enum
{
    ADC_CHANNEL_10 = 10,
} ADC_CHANNEL;

typedef enum
{
    ADC_CONFIGURATION_DEFAULT
} ADC_CONFIGURATION;

uint8_t ADC_ReadPercentage(ADC_CHANNEL channel);


uint16_t ADC_Read10bit(ADC_CHANNEL channel);

bool ADC_Enable(ADC_CHANNEL channel);

bool ADC_SetConfiguration(ADC_CONFIGURATION configuration);

#endif  //ADC_H
