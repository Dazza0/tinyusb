MCU_VARIANT = stm32f746xx

RHPORT_SPEED = OPT_MODE_FULL_SPEED OPT_MODE_HIGH_SPEED
RHPORT_DEVICE ?= 1
RHPORT_HOST ?= 0

PORT ?= 1
SPEED ?= high

CFLAGS += \
  -DSTM32F746xx \
  -DHSE_VALUE=25000000

# Linker
LD_FILE_GCC = $(BOARD_PATH)/STM32F746ZGTx_FLASH.ld

# flash target using on-board stlink
flash: flash-stlink
