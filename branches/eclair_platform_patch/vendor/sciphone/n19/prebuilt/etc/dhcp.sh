#!/system/bin/sh

ln -s /system/etc/dhcpcd_dir /system/etc/dhcpcd
echo starting DHCPCD ...
/system/bin/dhcpcd -d eth0
X=$?
echo exit code $X
exit $X
