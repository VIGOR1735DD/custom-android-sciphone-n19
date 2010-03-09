Current status:


[complete] 1. compilation succeeds.


[complete] 2. created system.img is in ext2 format with additional 128Mb of empty space.


[complete] 3. ramdisk.img is in the right format (uboot).

Must have uboot-mkimage package for debian/ubuntu installed (i don't want to waste time on getting this 
to automatically compile)


[not started] 4. init.rc is not ours.. need to add it under vendor tree, with our settings


[complete] 5. files in /system/etc/modules are copied


[not started] 6. other bits for n19 from /system/etc/ not copied


[complete] 7. adbd and busybox copied, few 'applets' symlinked in /system/bin/ to busybox


[in progress] 8. intended install is 
- system.img onto sdcard, mounted via loop device from init.rc
- data mounted from flash memory
- /data/app and /data/dalvik-cache symbolic linked to /system folders (that reside on the loop device that's a file on sdcard)


[in progress] 9. need to fool vold to believe /sdcard has been mounted


[not started] 10. keypad doesn't work at the moment


[not started] 11. touchscreen doesn't work at the moment


[not started] 12. many other things don't work but can't get to it to check


[complete] 13. creation of boot image work in progress, requires perl with perlmagick / imagemagick installed
(rename Android.mk from vendor/sciphone/n19/bootlogo/ if this causes problems)

[not started] 14. fix USB mass storage


[not started] 15. fix telephony


[not started] 16. fix wifi


[not started] 17. fix bluetooth


[not started] 18. import apps


