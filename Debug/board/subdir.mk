################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../board/board.c \
../board/clock_config.c \
../board/peripherals.c \
../board/pin_mux.c 

OBJS += \
./board/board.o \
./board/clock_config.o \
./board/peripherals.o \
./board/pin_mux.o 

C_DEPS += \
./board/board.d \
./board/clock_config.d \
./board/peripherals.d \
./board/pin_mux.d 


# Each subdirectory must supply rules for building sources it contributes
board/%.o: ../board/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFRDM_K64F -DFREEDOM -DSERIAL_PORT_TYPE_UART=1 -DFSL_RTOS_FREE_RTOS -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\Dragomir\git\MCUxpresso-tcp-server-netconn\board" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-server-netconn\source" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-server-netconn\mdio" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-server-netconn\phy" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-server-netconn\drivers" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-server-netconn\utilities" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-server-netconn\device" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-server-netconn\component\uart" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-server-netconn\component\serial_manager" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-server-netconn\component\lists" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-server-netconn\CMSIS" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-server-netconn\freertos\freertos_kernel\include" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-server-netconn\freertos\freertos_kernel\portable\GCC\ARM_CM4F" -I"D:\Programming\posao\dnet\mdio" -I"${workspace_loc:/dnet/lwip/template{MacroEnd}" -I"D:\Programming\posao\dnet\freertos\freertos_kernel\include" -I"D:\Programming\posao\dnet\mmcau" -I"D:\Programming\posao\dnet\device" -I"D:\Programming\posao\dnet\mbedtls\include" -I"D:\Programming\posao\dnet\CMSIS" -I"D:\Programming\posao\dnet\source" -I"D:\Programming\posao\dnet\utilities" -I"D:\Programming\posao\dnet\lwip\src\include" -I"D:\Programming\posao\dnet\lwip\port" -I"D:\Programming\posao\dnet\phy" -I"D:\Programming\posao\dnet\CMSIS_driver" -I"D:\Programming\posao\dnet\board" -I"D:\Programming\posao\dnet\drivers" -I"D:\Programming\posao\dnet\accel" -I"D:\Programming\posao\dnet\component\i2c" -I"D:\Programming\posao\dnet\component\lists" -I"D:\Programming\posao\dnet\component\osa" -I"D:\Programming\posao\dnet\component\serial_manager" -I"D:\Programming\posao\dnet\component\uart" -I"D:\Programming\posao\dnet\drivers\freertos" -I"D:\Programming\posao\dnet\lcd" -I"D:\Programming\posao\dnet\lwip\template" -O0 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


