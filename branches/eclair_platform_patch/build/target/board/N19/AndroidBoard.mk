LOCAL_PATH := $(call my-dir)

file := $(TARGET_OUT_KEYLAYOUT)/tuttle2.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/keypad.kl | $(ACP)
	$(transform-prebuilt-to-target)

