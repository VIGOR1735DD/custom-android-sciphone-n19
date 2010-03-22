LOCAL_PATH := $(call my-dir)

file := $(TARGET_OUT_KEYLAYOUT)/keypad.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/keypad.kl | $(ACP)
	$(transform-prebuilt-to-target)

