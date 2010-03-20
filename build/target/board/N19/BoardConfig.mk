# config.mk
# 
# Product-specific compile-time definitions.
#

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true
TARGET_CPU_ABI := armeabi
BOARD_USES_GENERIC_AUDIO := true

TARGET_USERIMAGES_USE_EXT2 := true
#TARGET_USERIMAGES_USE_YAFFS1 := true

