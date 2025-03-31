################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Middlewares/Third_Party/tflite-micro/signal/micro/kernels/xtensa/xtensa_square_root.S 

OBJS += \
./Middlewares/Third_Party/tflite-micro/signal/micro/kernels/xtensa/xtensa_square_root.o 

S_UPPER_DEPS += \
./Middlewares/Third_Party/tflite-micro/signal/micro/kernels/xtensa/xtensa_square_root.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/tflite-micro/signal/micro/kernels/xtensa/%.o: ../Middlewares/Third_Party/tflite-micro/signal/micro/kernels/xtensa/%.S Middlewares/Third_Party/tflite-micro/signal/micro/kernels/xtensa/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Middlewares-2f-Third_Party-2f-tflite-2d-micro-2f-signal-2f-micro-2f-kernels-2f-xtensa

clean-Middlewares-2f-Third_Party-2f-tflite-2d-micro-2f-signal-2f-micro-2f-kernels-2f-xtensa:
	-$(RM) ./Middlewares/Third_Party/tflite-micro/signal/micro/kernels/xtensa/xtensa_square_root.d ./Middlewares/Third_Party/tflite-micro/signal/micro/kernels/xtensa/xtensa_square_root.o

.PHONY: clean-Middlewares-2f-Third_Party-2f-tflite-2d-micro-2f-signal-2f-micro-2f-kernels-2f-xtensa

