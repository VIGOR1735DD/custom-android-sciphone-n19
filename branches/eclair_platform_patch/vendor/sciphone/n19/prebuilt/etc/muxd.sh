#!/system/bin/sh

#exec /system/xbin/gsmmuxd -p /dev/s3c2410_serial0 -m ulc2 -s /dev/mux /dev/ptmx /dev/ptmx /dev/ptmx 
exec /system/xbin/gsmmuxd -b 115200 -p /dev/s3c2410_serial0 -m ulc2 -s /dev/mux /dev/ptmx /dev/ptmx /dev/ptmx 
