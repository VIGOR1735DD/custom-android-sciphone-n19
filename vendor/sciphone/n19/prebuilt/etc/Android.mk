LOCAL_PATH := $(call my-dir)

PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/adbd_loader.sh:root/sbin/adbd_loader.sh \
		$(LOCAL_PATH)/androiddefaultIME.sh:system/etc/androiddefaultIME.sh \
		$(LOCAL_PATH)/Android.mk:system/etc/Android.mk \
		$(LOCAL_PATH)/asound.conf:system/etc/asound.conf \
		$(LOCAL_PATH)/dhcp.sh:system/etc/dhcp.sh \
		$(LOCAL_PATH)/filelogcatradio.sh:system/etc/filelogcatradio.sh \
		$(LOCAL_PATH)/filelogcat.sh:system/etc/filelogcat.sh \
		$(LOCAL_PATH)/gprs.sh:system/etc/gprs.sh \
		$(LOCAL_PATH)/hwitem_list.sh:system/etc/hwitem_list.sh \
		$(LOCAL_PATH)/muxd.sh:system/etc/muxd.sh \
		$(LOCAL_PATH)/power_resume.sh:system/etc/power_resume.sh \
		$(LOCAL_PATH)/ppp_mux.sh:system/etc/ppp_mux.sh \
		$(LOCAL_PATH)/ppp.sh:system/etc/ppp.sh \
		$(LOCAL_PATH)/pvplayer.conf:system/etc/pvplayer.conf \
		$(LOCAL_PATH)/restore.sh:system/etc/restore.sh \
		$(LOCAL_PATH)/usbms_start.sh:system/etc/usbms_start.sh \
		$(LOCAL_PATH)/usbms_stop.sh:system/etc/usbms_stop.sh \
		$(LOCAL_PATH)/vold.conf:system/etc/vold.conf \
		$(LOCAL_PATH)/wpa_supplicant.sh:system/etc/wpa_supplicant.sh \
		$(LOCAL_PATH)/zygote.sh:system/etc/zygote.sh \
		$(LOCAL_PATH)/pointercal_orig:system/etc/pointercal_orig
		
SYMLINKS := $(TARGET_OUT)/etc/pointercal
$(SYMLINKS): $(LOCAL_PATH)/Android.mk
	@echo "Symlink: $@ -> pointercal_orig"
	$(hide) ln -sf pointercal_orig $@

ALL_DEFAULT_INSTALLED_MODULES += $(SYMLINKS)
ALL_MODULES.$(LOCAL_MODULE).INSTALLED := \
    $(ALL_MODULES.$(LOCAL_MODULE).INSTALLED) $(SYMLINKS)
		
