#ifndef TFLM_WRAPPER_H
#define TFLM_WRAPPER_H

#ifdef __cplusplus
extern "C" {
#endif

void tflm_init(void);
void tflm_run(const float* input_data, float* output_data);

#ifdef __cplusplus
}
#endif

#endif  // TFLM_WRAPPER_H
