################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/ckksAccelerator.c \
../src/communication.c \
../src/instruction.c \
../src/main.c \
../src/platform.c \
../src/xtime_l.c 

OBJS += \
./src/ckksAccelerator.o \
./src/communication.o \
./src/instruction.o \
./src/main.o \
./src/platform.o \
./src/xtime_l.o 

C_DEPS += \
./src/ckksAccelerator.d \
./src/communication.d \
./src/instruction.d \
./src/main.d \
./src/platform.d \
./src/xtime_l.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../Aloha-HE_bsp/microblaze_1/include -mlittle-endian -mcpu=v11.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


