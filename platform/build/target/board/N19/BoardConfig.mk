# config.mk
# 
# Product-specific compile-time definitions.
#

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true
TARGET_CPU_ABI := armeabi
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
