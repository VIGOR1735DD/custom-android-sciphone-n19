#!/system/bin/sh

if ls /system/etc/modules/preload/g_android_adb.ko
then
	/system/bin/log -t usb_massstorage "USB closing adbd..."
	/system/bin/stop usbms_start
	/system/bin/rmmod g_file_storage
	/system/bin/insmod /system/etc/modules/preload/g_android_adb.ko
	/system/bin/start adbd

fi

exec /sbin/adbd
