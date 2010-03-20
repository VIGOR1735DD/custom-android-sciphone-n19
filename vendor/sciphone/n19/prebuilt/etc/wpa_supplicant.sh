#!/system/bin/sh

/system/bin/iwpriv eth0 autodeepsleep 1
/system/bin/wpa_supplicant -Dwext -ieth0 -c/system/etc/wifi/wpa_supplicant.conf