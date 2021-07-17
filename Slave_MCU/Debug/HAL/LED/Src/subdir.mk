################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../HAL/LED/Src/Led.c 

OBJS += \
./HAL/LED/Src/Led.o 

C_DEPS += \
./HAL/LED/Src/Led.d 


# Each subdirectory must supply rules for building sources it contributes
HAL/LED/Src/%.o: ../HAL/LED/Src/%.c HAL/LED/Src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Slave_MCU\MCAL\SPI\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Slave_MCU\HAL\BUZZER\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Slave_MCU\HAL\LCD\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Slave_MCU\HAL\LED\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Slave_MCU\HAL\RELAY\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Slave_MCU\LIB" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Slave_MCU\MCAL\DIO\Inc" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


