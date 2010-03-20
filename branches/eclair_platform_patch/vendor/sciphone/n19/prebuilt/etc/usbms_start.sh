#!/system/bin/sh

	/system/bin/log -t usb_massstorage "USB starting ..."
	/system/bin/stop adbd
	/system/bin/log -t usb_massstorage "USB starting2  ..."
	/system/bin/rmmod g_android_adb
	/system/bin/insmod /system/etc/modules/preload/g_file_storage.ko file=/dev/block/mmcblk0p1
