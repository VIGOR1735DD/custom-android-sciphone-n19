# Introduction #

Guide on repacking the root filesystem


# Details #

To do this, you will need Linux operating system with uboot-mkimage package available for Ubuntu and Debian distributions.  I'm not sure how to get it for other, but you could always download uboot source from http://www.denx.de/wiki/DULG/UBootVersions and compile it.

## Unpacking ##

1. Copy ramdisk.uimg from the official update

2. Remove first 64 bytes:
```
dd if=ramdisk.uimg bs=64 skip=1 of=ramdisk.gz
```

3. Unzip it
```
gunzip -v ramdisk.gz
```

4. create empty directory and chdir into it
```
mkdir ramdisk
cd ramdisk
```

5. unpack ramdisk
```
cpio -i < ramdisk
```

6. Do whatever you intended to do with it.

## Packing ##

1. chdir into directory that has ramdisk files (everything in there will be packed up, make sure you don't have anything you didn't intend)

2. Pack and zip
```
find . -print | cpio -o -H newc | gzip > ../ramdisk.gz
```

3. chdir one level up

4. Make the image (this is where you need uboot-mkimage)
```
mkimage -A ARM -O Linux -T ramdisk -C gzip -a 0x00 -e 0x00 -n initramfs -d ramdisk.gz ramdisk.uimg
```

5. copy this file together with other update files, flash your phone, see what happens.

## Updating without losing your changes ##

  1. Download [replacement for updata.txt](http://custom-android-sciphone-n19.googlecode.com/files/updata-ramdisk.txt) and rename it to `updata.txt`.
  1. Copy the renamed file to your sd card, along with your modified ramdisk.uimg
  1. Reboot your device and follow the flashing procedure.