#!/system/bin/sh

   #The product name issue
    setprop build_number  .`cat /sys/misc_version/lcd_version`.`cat /sys/misc_version/cam_version`.`cat /sys/misc_version/mcp_version`.
