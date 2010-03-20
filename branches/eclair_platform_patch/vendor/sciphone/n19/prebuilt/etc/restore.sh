#!/system/bin/sh

/system/bin/log -t restore "seting up reboot to resset user data ..."

# setup the reboot to reset the user data in u-boot
echo data_reset > /sys/android_power/factor_data_reset
