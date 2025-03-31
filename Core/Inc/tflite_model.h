#ifndef TFLITE_MODEL_H
#define TFLITE_MODEL_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

extern const unsigned char seizure_detection_model_tflite[];  // Declare model array
extern const unsigned int seizure_detection_model_tflite_len; // Declare model size

#ifdef __cplusplus
}
#endif

#endif // TFLITE_MODEL_H
