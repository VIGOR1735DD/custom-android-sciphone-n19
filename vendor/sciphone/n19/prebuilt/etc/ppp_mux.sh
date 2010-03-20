#!/system/bin/sh

#/system/xbin/pppd debug dump noauth passive /dev/mux0 115200 noipdefault defaultroute usepeerdns ipcp-accept-local noipdefault novj novjccomp ipcp-restart 10 persist holdoff 5 lcp-echo-interval 20 lcp-echo-failure 4
#/system/xbin/pppd debug dump modem asyncmap 0 noauth noccp connect /etc/gprs.sh  /dev/mux2 115200 noipdefault defaultroute usepeerdns ipcp-accept-local noipdefault novj novjccomp ipcp-restart 10 lcp-echo-interval 20 lcp-echo-failure 4
#/system/xbin/pppd debug dump modem asyncmap 0 noauth noccp connect /etc/gprs.sh disconnect /etc/disconect.sh  /dev/mux2 115200 noipdefault defaultroute usepeerdns ipcp-accept-local novj novjccomp ipcp-restart 10 lcp-echo-interval 20 lcp-echo-failure 4
#/system/xbin/pppd debug dump modem asyncmap 0 name abc noccp connect /etc/gprs.sh disconnect /etc/disconect.sh  /dev/mux2 115200 noipdefault defaultroute usepeerdns ipcp-accept-local novj novjccomp ipcp-restart 10 lcp-echo-interval 20 lcp-echo-failure 4
#/system/xbin/pppd debug dump modem asyncmap 0 noauth noccp connect /etc/gprs.sh disconnect /etc/disconect.sh  /dev/mux2 115200 noipdefault defaultroute usepeerdns ipcp-accept-local novj novjccomp 
#/system/xbin/pppd debug dump modem asyncmap 0 noauth noccp user "ptest1" connect '/system/bin/logwrapper /system/bin/chat -v -s -f /etc/ppp/gprs_connect' disconnect /etc/disconect.sh  /dev/mux2 115200 noipdefault defaultroute usepeerdns ipcp-accept-local novj novjccomp 
#/system/xbin/pppd debug dump modem asyncmap 0 noauth noccp user "ptest1" connect '/system/bin/chat -v -f /etc/ppp/gprs_connect' disconnect /etc/disconect.sh  /dev/mux2 115200 noipdefault defaultroute usepeerdns ipcp-accept-local novj novjccomp 
#/system/xbin/pppd debug dump modem noauth noccp user 'ptest1' connect '/system/bin/chat -v -f /etc/ppp/gprs_connect' disconnect /etc/disconect.sh  /dev/mux2 115200 noipdefault defaultroute usepeerdns ipcp-accept-local novj novjccomp 

/system/xbin/pppd file /etc/ppp/options
