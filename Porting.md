# Introduction #

There are various version of Android that you may be attempting to port.  This project is currently focusing on Eclair.  In SVN we have 3 branches for the 3 main Android releases.  Any further branches will be created as interested developers decide to to (eg, porting of the unreleased main android branch)


# Details #

Current status of this sub-project is "work-in-progress".  Android version you will compile will not work on Sciphone N19, and updating it will cause the phone to start up and remain unresponsive.  Use this to compile parts that you want to add or modify, or to work towards fixing the 'patch' to produce flashable output.

To build Android from source follow these steps:

## Branches ##

There are several branches of Android source code.  Choose which one you want to work on.  Available branches that are being worked on here are cupcake (which is release 1.5), donut (release 1.6) and eclair (release 2.1).  Other branches of Android source code are considered, at this stage.

## Procedure ##

### Prerequisites ###

You need a Linux box configured as required by Android build process (see below).  Further due to armv4t specific toolchains, you must use 32bit version of Linux (therefore there may be issues if you are using MacOS).

n addition to the stock-android requirements, the following debian/ubuntu packages are also required: uboot-mkimage, perl, perlmagick

### Get Android Source Code ###

Follow the instructions on http://source.android.com/download

When you get to the step 'Initializing a Repo client' make sure you put the branch name you wish to work on.  Eg:

```
$ repo init -u git://android.git.kernel.org/platform/manifest.git -b android-2.1_r2
```

This will get eclair branch of the Android source, tag android-2.1\_r2.  Download and wait for everything to finish.

### Moving baselines ###

Current work is on eclair only, off the android-2.1\_r2 tag.  Other versions (cupcake, donut) currently don't work, feel free to dig into these if you're interested.

### Get Sciphone N19 patches ###

Using your subversion client, get this projects branch that matches the branch of Android you downloaded:

If you downloaded cupcake, use:
```
svn checkout http://custom-android-sciphone-n19.googlecode.com/svn/branches/cupcake_platform_patch n19_cupcake_platform
```

If you downloaded donut, use:
```
svn checkout http://custom-android-sciphone-n19.googlecode.com/svn/branches/donut_platform_patch n19_donut_platform
```

If you downloaded eclair, use:
```
svn checkout http://custom-android-sciphone-n19.googlecode.com/svn/branches/eclair_platform_patch n19_eclair_platform
```

Copy the files from n19\_xxx\_platform directory to the directory where you have your "platform" directory checked out from git/repo.

Unzip armv4t specific compilers:
```
cd prebuilt/linux-x86/toolchain/
tar jxcf armv4t-android-eabi-4.2.1.tar.bz2
```

### Compiling ###

Run 'make -j4' to build the whole android, from the 'platform' directory.  "-j4" tells make to run 4 processes at the same time.  In case things just 'die' reduce this number.

### Submit changes back here ###

As you fix / improve the build process, please submit the changes back here.

Ask for read/write access to subversion via forums (see project home for the link).

Track the files you changed in the 'platform' tree to import them back into subversion.

# Status of Branches #

## Cupcake Port ##

Status: does not compile (anymore).  If anyone is enthusiastic on porting updated version of cupcake, please post a comment to get read/write access, or else don't use this branch

## Donut Port ##

Status: does not compile (anymore).  If anyone is enthusiastic on porting updated version of donut, please post a comment to get read/write access, or else don't use this branch

## Eclair Port ##

Current status:

| **No** | **Status** | **Item**| **Description** |
|:-------|:-----------|:--------|:----------------|
| 1.     | <font color='green'>complete</font> | Compilation | 'make' from top level completes without errors |
| 2.     | <font color='green'>complete</font> | system.img | system.img that gets created is in ext2 format with additional 128Mb of empty space. |
| 3.     | <font color='green'>complete</font> | ramdisk.img | ramdisk.img that gets created is in the right n19 format (uboot).  This creates dependency on uboot-mkimage debian/ubuntu package |
| 4.     | <font color='green'>complete</font> | init.rc | init.rc is not n19 specific, need to create correct one somewhere in vendor tree, with our settings |
| 5.     | <font color='green'>complete</font> | /system/etc/modules | binaries from stock phone integrated into the build |
| 6.     | <font color='green'>complete</font> | /system/etc | config files form /system/etc need to be correctly integrated |
| 7.     | <font color='green'>complete</font> | adbd & busybox | adbd and busybox copied, few 'applets' symlinked in /system/bin/ to busybox |
| 8.     | <font color='orange'>in progress</font> | install process | intended install is:<br />- system.img onto sdcard, mounted via loop device from init.rc<br />- data mounted from flash memory<br />- /data/app and /data/dalvik-cache symbolic linked to /system folders<br />(that reside on the loop device that's a file on sdcard) |
| 9.     | <font color='orange'>in progress</font> | documentation | write installation guide.  initial draft in vendor/sciphone/n19/install.txt |
| 10.    | <font color='green'>complete</font> | sdcard mounting | we need to inform vold that /sdcard has already been mounted, since we do it during boot |
| 11.    | <font color='green'>complete</font> | keypad  | View the wiki about KeyPad |
| 12.    | <font color='green'>complete</font> | touchscreen | View the wiki about TouchScreen.  Note current implementatio does auto-calibration.  touch corners of the screen after reboot to get the phone to autocalibrate. |
| 13.    | <font color='red'>in progress</font> | testing | find all other things that don't work |
| 14.    | <font color='green'>complete</font> | bootlogo | stamps image with version and includes as initlogo.rle.  requires perl and perlmagick debian/ubuntu packages |
| 15.    | <font color='red'>not started</font> | usb mass storage | doesn't work    |
| 16.    | <font color='orange'>in progress</font> | telephony | doesn't work    |
| 17.    | <font color='red'>not started</font> | wifi    | doesn't work    |
| 18.    | <font color='red'>not started</font> | bluetooth | doesn't work    |
| 19.    | <font color='red'>not started</font> | apps    | n19 specific apps need to be imported |
| 20.    | <font color='red'>not started</font> | gapps   | google apps (contacts/calendar sync, market, googletalk, youtube, ...) |
| 21.    | <font color='red'>not started</font> | admin   | consider using google code issues tracker for tracking these efforts |
| 22.    | <font color='red'>not started</font> | dexopt  | dex optimization is meant to be performed on the actual device (or emulator, but we don't want to get into building armv4t version of the emulator).  We don't want dalvik-cache to be used to generate these.  Investigate and find a proper way of running this on the phone, as a manual step at the end of the build. |
| 23.    | <font color='red'>not started</font> | audio   | android-2.1\_r2 tag doesn't exist on projects external/alsa-lib external/alsa-utils and hardware/alsa\_sound<br />we need to identify which ones to include, amend instructions on dowloading source, do whatever changes are needed, and get the audio going |
| 24.    | <font color='green'>completed</font> | battery/power | power management works correctly -- battery state / charging state reported correctly |
| 25.    | <font color='red'>not started</font> | calculator | its buggy... 0+0 = 0; but 1+1 = some very big number |
| 26.    | <font color='red'>not started</font> | calibration | current 'auto calibration' is a hack. we need a permanent way to calibrate screen properly |
| 27.    | <font color='red'>not started</font> | gprs    | doesn't work    |