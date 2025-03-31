################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Remove the X-CUBE-AI source file to exclude it from the build
C_SRCS := $(filter-out ../X-CUBE-AI/App/app_x-cube-ai.c, $(C_SRCS))
OBJS := $(filter-out ./X-CUBE-AI/App/app_x-cube-ai.o, $(OBJS))
C_DEPS := $(filter-out ./X-CUBE-AI/App/app_x-cube-ai.d, $(C_DEPS))

# Each subdirectory must supply rules for building sources it contributes
X-CUBE-AI/App/%.o X-CUBE-AI/App/%.su X-CUBE-AI/App/%.cyclo: ../X-CUBE-AI/App/%.c X-CUBE-AI/App/subdir.mk
	@echo "Skipping X-CUBE-AI/App/app_x-cube-ai.c - Excluded from Build"

clean: clean-X-2d-CUBE-2d-AI-2f-App

clean-X-2d-CUBE-2d-AI-2f-App:
	-$(RM) ./X-CUBE-AI/App/app_x-cube-ai.cyclo ./X-CUBE-AI/App/app_x-cube-ai.d ./X-CUBE-AI/App/app_x-cube-ai.o ./X-CUBE-AI/App/app_x-cube-ai.su

.PHONY: clean-X-2d-CUBE-2d-AI-2f-App
