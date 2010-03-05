LOCAL_PATH := $(call my-dir)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/preload/s3c2410_udc.ko:system/etc/modules/preload/s3c2410_udc.ko \
    $(LOCAL_PATH)/preload/g_ether.ko:/modules/preload/g_ether.ko \
    $(LOCAL_PATH)/preload/gspihw.ko:/modules/preload/gspihw.ko \
    $(LOCAL_PATH)/preload/g_file_storage.ko:system/etc/modules/preload/g_file_storage.ko \
    $(LOCAL_PATH)/preload/s3cmci.ko:system/etc/modules/preload/s3cmci.ko \
    $(LOCAL_PATH)/preload/g_android_adb.ko:system/etc/modules/preload/g_android_adb.ko \
    $(LOCAL_PATH)/preload/triones_battery.ko:system/etc/modules/preload/triones_battery.ko \
    $(LOCAL_PATH)/wifi/gspi.ko:system/etc/modules/wifi/gspi.ko \
    $(LOCAL_PATH)/wifi/gspi8686_mfg_1.1.17.bin:system/etc/modules/wifi/gspi8686_mfg_1.1.17.bin \
    $(LOCAL_PATH)/wifi/gspi2480.ko:system/etc/modules/wifi/gspi2480.ko \
    $(LOCAL_PATH)/wifi/gspi_chiprev.ko:system/etc/modules/wifi/gspi_chiprev.ko \
    $(LOCAL_PATH)/bluetooth/hidp.ko:system/etc/modules/bluetooth/hidp.ko \
    $(LOCAL_PATH)/bluetooth/bt_ta1.ko:system/etc/modules/bluetooth/bt_ta1.ko \
    $(LOCAL_PATH)/bluetooth/bluetooth.ko:system/etc/modules/bluetooth/bluetooth.ko \
    $(LOCAL_PATH)/bluetooth/l2cap.ko:system/etc/modules/bluetooth/l2cap.ko \
    $(LOCAL_PATH)/bluetooth/rfcomm.ko:system/etc/modules/bluetooth/rfcomm.ko \
    $(LOCAL_PATH)/bluetooth/hci_uart.ko:system/etc/modules/bluetooth/hci_uart.ko \
    $(LOCAL_PATH)/bluetooth/sco.ko:system/etc/modules/bluetooth/sco.ko \
    $(LOCAL_PATH)/netfilter/x_tables.ko:system/etc/modules/netfilter/x_tables.ko \
    $(LOCAL_PATH)/netfilter/nf_conntrack_ipv4.ko:system/etc/modules/netfilter/nf_conntrack_ipv4.ko \
    $(LOCAL_PATH)/netfilter/iptable_filter.ko:system/etc/modules/netfilter/iptable_filter.ko \
    $(LOCAL_PATH)/netfilter/nf_nat.ko:system/etc/modules/netfilter/nf_nat.ko \
    $(LOCAL_PATH)/netfilter/ip_tables.ko:system/etc/modules/netfilter/ip_tables.ko \
    $(LOCAL_PATH)/netfilter/xt_tcpudp.ko:system/etc/modules/netfilter/xt_tcpudp.ko \
    $(LOCAL_PATH)/netfilter/nf_conntrack.ko:system/etc/modules/netfilter/nf_conntrack.ko \
    $(LOCAL_PATH)/netfilter/iptable_nat.ko:system/etc/modules/netfilter/iptable_nat.ko \
    $(LOCAL_PATH)/netfilter/iptable_mangle.ko:system/etc/modules/netfilter/iptable_mangle.ko \
    $(LOCAL_PATH)/netfilter/ipt_MASQUERADE.ko:system/etc/modules/netfilter/ipt_MASQUERADE.ko
