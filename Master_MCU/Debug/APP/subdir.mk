################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/SPI_Master.c 

OBJS += \
./APP/SPI_Master.o 

C_DEPS += \
./APP/SPI_Master.d 


# Each subdirectory must supply rules for building sources it contributes
APP/%.o: ../APP/%.c APP/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\HAL\LCD\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\MCAL\DIO\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\MCAL\GLBL_INTERPT\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\MCAL\SPI\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\MCAL\UART\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\HAL\BUZZER\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\HAL\LED\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\HAL\RELAY\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\LIB" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


