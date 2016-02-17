# Introduction #

Progress on findings about the N19 hardware, and possible hacks done to it


# Details #

This is the landing page for the N19 hardware hacks. This is work in progress. Following any of the directions on this page will most likely **cause permanent damage to your phone** if you don't have the correct skills nor the correct tools. We, the custom-android-sciphone-n19 community shouldn't be made liable in case you lose money, data or hardware following any of these instructions.

## Findings ##

The main CPU is a Samsung `S3C2` (Part nº `s3c2448xl-4a`) processor, clocked at 400mhz. Datasheets and other stuff about the CPU may be found at the [Samsung's page](http://www.samsung.com/global/business/semiconductor/mobilesocProductDown.do?userId=pq.wang@besovideo.com#component_SC32442).

~~Reading from the init.rc script, there're capabilities for a GPS module on serial port 1 (serial port 0 is for the GSM module). The GPS module is referenced as a neo1973, and the `OpenMoko` Neo 1973 is using a UART GPS module named _Hammerhead PMB 2520_ AGPS from _Global Locate_, the people at `OpenMoko` have a driver for it at https://svn.openmoko.org/trunk/src/target/kernel/patches/gta01-power_control.patch implemented as a plugin for the GPSD daemon. Although there are no such device as _neo1973-pm-gps.0_ in _/sys/bus/platform/devices/_ folder. (note: **this is true**, because the [GPSD](http://gpsd.berlios.de/) plugins aren't kernel modules, they're implemented as a layer on top of the UART module, interpreting NMEA... much like xinetd, but less complicated... btw, probably any UART supporting NMEA conformant gps module can be used here).~~ Looks like the project OpenMoko ditched the hammerhead IC. Altough the GSM module is from the same brand as the Hammerhead.

Investigating how to add accelerometer support i found [this](http://pdk.android.com/online-pdk/guide/sensors.html), [this](http://gitorious.org/android-on-freerunner/platform_hardware_libhardware/commit/2b5690253dbc4c0be9d05ba15222be3dcb44696a) and [this](http://android.git.kernel.org/?p=platform/hardware/libhardware.git;a=blob;f=sensors/sensors_trout.c;h=f3c0b3a51c948291ea8060c650d6be078cedf004;hb=d6054a36475b5ff502b4af78f7d272a713c1a8e7).

# Bill of Materials for the N19 #
| **Item** | **Part No.** | **On-board?** |
|:---------|:-------------|:--------------|
| Processor | [Samsung S3C2442](http://custom-android-sciphone-n19.googlecode.com/files/SC32442B_UsersManual_MSP3_Rev12.pdf) | Yes           |
| LCD Driver | [Ilitek ILI9331](http://custom-android-sciphone-n19.googlecode.com/files/ILI9331.pdf) | Yes           |
| Power Management | Dialog Semiconductor DA9030 | Yes           |
| NAND Flash | Samsung K9F1G08Q0M or SSB K9F1G08V0M | Yes           |
| Camera Sensor | [Omnivision OV2640](http://www.ovt.com/products/detail.php?id=10) | Yes           |
| [MCP](http://en.wikipedia.org/wiki/Multi-Chip_Module) | K5D1G1G      | Yes           |
| Audio Codec | [Asahi Kasei AK4648](http://www.asahi-kasei.co.jp/akm/en/product/ak4648/ak4648.html) | Yes           |
| DRAM?    | Samsung K5D1G1GACA-A075 | Yes           |
| GSM Power Amplifier | [RFMD RF3196](http://custom-android-sciphone-n19.googlecode.com/files/datasheet%20rf3196.pdf) | Yes           |
| Group of power amp? | K5L3316CAM   | Yes           |
| GSM Module | Infineon 7880 | Yes           |
| AGPS     | ?            | No            |