# This is a generic product that isn't specialized for a specific device.
# It includes the base Android platform. If you need Google-specific features,
# you should derive from generic_with_google.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

# Overrides
PRODUCT_BRAND := Sciphone
PRODUCT_DEVICE := N19
PRODUCT_NAME := SciphoneN19

USE_CAMERA_STUB:=true

