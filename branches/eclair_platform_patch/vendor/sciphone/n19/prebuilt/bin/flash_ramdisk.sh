#!/system/bin/sh

cat /dev/zero > /dev/mtd/mtd2
flash_image initramfs /sdcard/ramdisk.uimg
