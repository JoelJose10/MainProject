#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/micro/all_ops_resolver.h"
#include "tensorflow/lite/schema/schema_generated.h"
#include "tensorflow/lite/version.h"
#include "tflm_wrapper.h"
#include "tflite_model.h"

#define TENSOR_ARENA_SIZE (10 * 1024)
uint8_t tensor_arena[TENSOR_ARENA_SIZE];

// TFLM components
tflite::MicroInterpreter* interpreter;
tflite::AllOpsResolver resolver;
const tflite::Model* model;
TfLiteTensor* input_tensor;
TfLiteTensor* output_tensor;

extern "C" void tflm_init() {
    model = tflite::GetModel(tflite_model);
    static tflite::MicroInterpreter static_interpreter(model, resolver, tensor_arena, TENSOR_ARENA_SIZE);
    interpreter = &static_interpreter;

    if (interpreter->AllocateTensors() != kTfLiteOk) {
        return;  // Error handling
    }

    input_tensor = interpreter->input(0);
    output_tensor = interpreter->output(0);
}

extern "C" void tflm_run(const float* input_data, float* output_data) {
    for (int i = 0; i < input_tensor->dims->data[1]; i++) {
        input_tensor->data.f[i] = input_data[i];
    }

    if (interpreter->Invoke() != kTfLiteOk) {
        return;  // Error handling
    }

    for (int i = 0; i < output_tensor->dims->data[1]; i++) {
        output_data[i] = output_tensor->data.f[i];
    }
}
