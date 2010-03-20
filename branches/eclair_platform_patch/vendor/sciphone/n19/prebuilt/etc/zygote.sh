#!/system/bin/sh

SYSTEM_POINTERCAL=/system/etc/pointercal
SYSTEM_POINTERCAL_ORIG=/system/etc/pointercal_orig
TS_POINTERCAL=/data/data/com.aqumula.ta1.tscalibrate/pointercal


if exists /data/data/com.aqumula.ta1.tscalibrate/pointercal
then
    rm $SYSTEM_POINTERCAL
    chmod 644 $TS_POINTERCAL 
    ln -s $TS_POINTERCAL $SYSTEM_POINTERCAL
    log -t pointercal "ln -s $TS_POINTERCAL $SYSTEM_POINTERCAL"
else
    rm $SYSTEM_POINTERCAL
    ln -s $SYSTEM_POINTERCAL_ORIG $SYSTEM_POINTERCAL
    log -t pointercal "ln -s $SYSTEM_POINTERCAL_ORIG $SYSTEM_POINTERCAL"
fi

exec /system/bin/app_process -Xzygote /system/bin --zygote --start-system-server
