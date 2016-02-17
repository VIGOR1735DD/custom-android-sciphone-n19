# Scratchpad #

Found this on logcat:

`I/EventHub(  434): New device: path=/dev/input/event1 name=keypad id=0x10000 (of 0x1) index=1 fd=50 classes=0x1`

Apparently the keypad is /dev/input/event1 now we have to find the kernel module that handles it.