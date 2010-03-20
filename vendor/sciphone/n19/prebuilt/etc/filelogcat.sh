#!/system/bin/sh

log -t filelogcat finished the logcat to files
logcat -v time -f /data/syslogcat.log -r 256 -n 8