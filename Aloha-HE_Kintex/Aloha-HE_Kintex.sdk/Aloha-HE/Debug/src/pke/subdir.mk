################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/pke/test_polymul.c \
../src/pke/xtime_l.c 

OBJS += \
./src/pke/test_polymul.o \
./src/pke/xtime_l.o 

C_DEPS += \
./src/pke/test_polymul.d \
./src/pke/xtime_l.d 


# Each subdirectory must supply rules for building sources it contributes
src/pke/%.o: ../src/pke/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../Aloha-HE_bsp/microblaze_1/include -mlittle-endian -mcpu=v11.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


