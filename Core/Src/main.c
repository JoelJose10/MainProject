#include <stddef.h>
#include <stdio.h>
#include <sys/stat.h>  // For UART printf support
#include "main.h"
#include "eeg_data.h"
#include "tflm_wrapper.h"  // Use the wrapper instead of direct TFLM calls
#include "stm32f7xx_hal.h"


extern UART_HandleTypeDef huart3;

int _write(int file, char *ptr, int len) {
    HAL_UART_Transmit(&huart3, (uint8_t*)ptr, len, HAL_MAX_DELAY);
    return len;
}

static void RunInference(const float* input_data) {
    float output_data[1];  // Adjust size based on model output
    tflm_run(input_data, output_data);

    float seizure_prob = output_data[0];
    printf("Seizure Probability: %d%%\n", (int)(seizure_prob * 100));

    if (seizure_prob > 0.5) {
        printf("⚠️ SEIZURE DETECTED!\n");
    } else {
        printf("✅ No seizure detected.\n");
    }
}

static void ProcessEEGData(void) {
    for (int i = 0; i < NUM_ROWS; i++) {
        RunInference((float*)eeg_data[i]);
        HAL_Delay(500);
    }
}

#include "eeg_data.h"

void ProcessEEGData(void) {
    for (int i = 0; i < NUM_ROWS; i++) {
        RunInference((float*)eeg_data[i]);  // Use the data correctly
        HAL_Delay(500);
    }
}

int main(void) {
    HAL_Init();
    SystemClock_Config();
    MX_GPIO_Init();
    MX_USART3_UART_Init();

    printf("\n🧠 Seizure Detection Model Running...\n");

    tflm_init();  // Initialize TFLM

    ProcessEEGData();  // Run inference on EEG data

    while (1) {
        HAL_Delay(1000);
    }
}

void Error_Handler(void) {
    while (1) {
        // Infinite loop for error handling
    }
}

