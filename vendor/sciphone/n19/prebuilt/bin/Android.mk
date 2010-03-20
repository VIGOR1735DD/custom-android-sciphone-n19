LOCAL_PATH := $(call my-dir)

TOOLS := \
  cut \
  diff \
  fdisk \
  free \
  grep \
  gunzip \
  head \
  mknod \
  mkswap \
  more \
  sort \
  swapon \
  tar

PRODUCT_COPY_FILES += $(LOCAL_PATH)/flash_ramdisk.sh:system/bin/flash_ramdisk.sh \
  $(LOCAL_PATH)/adbd:root/sbin/adbd
  
include $(CLEAR_VARS)
LOCAL_MODULE := busybox
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_SRC_FILES := busybox
include $(BUILD_PREBUILT)

SYMLINKS := $(addprefix $(TARGET_OUT)/bin/,$(TOOLS))
$(SYMLINKS): BUSYBOX_BINARY := $(LOCAL_MODULE)
$(SYMLINKS): $(LOCAL_INSTALLED_MODULE) $(LOCAL_PATH)/Android.mk
	@echo "Symlink: $@ -> $(BUSYBOX_BINARY)"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf $(BUSYBOX_BINARY) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SYMLINKS)
ALL_MODULES.$(LOCAL_MODULE).INSTALLED := \
    $(ALL_MODULES.$(LOCAL_MODULE).INSTALLED) $(SYMLINKS)
