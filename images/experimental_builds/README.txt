This is totally experimental, and not expected to work.

Frist cut of the Donut image is there, however, I haven't even tried if it works on our phone.  
I expect pretty much EVERYTHING not to work -- no display, no radio (eg no ability to make calls), 
no internet acces..  but really it won't matter if there is no support for display.

Having said that, these images have only /system partition -- no change to kernel, or rootfs.  These two load 
modules that are needed for our hardware.

Once the phone starts, it will be possible to adb shell to it and type commands manually to load drivers that 
are in /sys folder (which is part of rootfs).  I havent had the time to hack this out, therefore I haven't tried 
loading this into the phone.

Flash approach: 
- prepare SD card as you would for the normal update.  
- be prepared to loose all settings (since /data will be wiped as part of the update)
- replace system.img.yaffs1 with the file from here (make sure you rename this image file to system.img.yaffs1).  
- Update your phone.  
- Make it work
- let us know what happened

When you want to go back:
- prepare SD card with the 'official' update, and fix it back to the way 