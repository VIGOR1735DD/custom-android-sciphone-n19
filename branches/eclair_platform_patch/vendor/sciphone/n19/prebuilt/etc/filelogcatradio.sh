#!/system/bin/sh

log -t filelogcat finished the logcat radio to files
logcat -v time -b radio -f /data/syslogcatradio.log -r 256 -n 8