################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../USB_HOST/Target/usbh_conf.c \
../USB_HOST/Target/usbh_platform.c 

OBJS += \
./USB_HOST/Target/usbh_conf.o \
./USB_HOST/Target/usbh_platform.o 

C_DEPS += \
./USB_HOST/Target/usbh_conf.d \
./USB_HOST/Target/usbh_platform.d 


# Each subdirectory must supply rules for building sources it contributes
USB_HOST/Target/%.o USB_HOST/Target/%.su USB_HOST/Target/%.cyclo: ../USB_HOST/Target/%.c USB_HOST/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F723xx -c -I../USB_HOST/App -I-I../Middlewares/Third_Party/tflite-micro -I../Middlewares/Third_Party/tflite-micro -I../Middlewares/Third_Party/tflite-micro/tensorflow -I../Middlewares/Third_Party/tflite-micro/tensorflow/lite -I../Middlewares/Third_Party/tflite-micro/tensorflow/lite/micro -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/AUDIO/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../X-CUBE-AI/App -I../X-CUBE-AI -I../X-CUBE-AI/Target -O0 -ffunction-sections -fdata-sections -Wall -std=gnu11 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-USB_HOST-2f-Target

clean-USB_HOST-2f-Target:
	-$(RM) ./USB_HOST/Target/usbh_conf.cyclo ./USB_HOST/Target/usbh_conf.d ./USB_HOST/Target/usbh_conf.o ./USB_HOST/Target/usbh_conf.su ./USB_HOST/Target/usbh_platform.cyclo ./USB_HOST/Target/usbh_platform.d ./USB_HOST/Target/usbh_platform.o ./USB_HOST/Target/usbh_platform.su

.PHONY: clean-USB_HOST-2f-Target

