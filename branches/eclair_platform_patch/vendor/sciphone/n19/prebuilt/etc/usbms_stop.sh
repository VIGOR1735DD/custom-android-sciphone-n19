#!/system/bin/sh

#if ls /system/etc/modules/preload/g_android_adb.ko &&
#then
	/system/bin/log -t usb_massstorage "USB stopping ..."
	/system/bin/sync
	/system/bin/start adbd

