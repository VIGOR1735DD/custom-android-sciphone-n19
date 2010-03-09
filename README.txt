Current state:

1. compilation succeeds.

2. created system.img is in ext2 format with additional 128Mb of empty space.

3. ramdisk.img is not in the right format, I haven't looked much into it.  its the official version of it, not
our weirdo n19 version -- need to fix that in the build system either in vendor folder or hack build/core to allow 
defining alternative formats of ramdisk

4. init.rc is not ours.. need to add it under vendor tree, with our settings

5. /system/etc/modules is copied

6. other bits for n19 from /system/etc/ not copied

7. adbd and busybox copied, few 'applets' symlinked in /system/bin/ to busybox

8. intended install is 
- system.img onto sdcard, mounted via loop device from init.rc
- data mounted from flash memory
- /data/app and /data/dalvik-cache symbolic linked to /system folders (that reside on the loop device that's a file on sdcard)

9. need to fool vold to believe /sdcard has been mounted

10. keypad doesn't work at the moment

11. touchscreen doesn't work at the moment

12. many other things don't work but can't get to it to check

13. creation of boot image work in progress, requires perl with perlmagick / imagemagick installed

 