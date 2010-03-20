#!/system/bin/sh

#/system/xbin/pppd debug dump modem asyncmap 0 noauth noccp /dev/mux2 115200 noipdefault defaultroute usepeerdns ipcp-accept-local noipdefault novj novjccomp ipcp-restart 10 lcp-echo-interval 20 lcp-echo-failure 4
/system/xbin/pppd debug dump modem asyncmap 0 noauth noccp /dev/s3c2410_serial0 115200 noipdefault defaultroute usepeerdns ipcp-accept-local noipdefault novj novjccomp ipcp-restart 10 lcp-echo-interval 20 lcp-echo-failure 4
