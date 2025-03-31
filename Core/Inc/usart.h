#ifndef __USART_H__
#define __USART_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "stm32f7xx_hal.h"

extern UART_HandleTypeDef huart3;  // Change if using a different UART

void MX_USART3_UART_Init(void);

#ifdef __cplusplus
}
#endif

#endif /* __USART_H__ */
