# Introduction #

Some N19's come with very poor microphone sensitivity.  The person you are talking to struggles to hear anything.  Hack by ydanila.


# Details #

This increases sensitivity of the microphone so that the person you are talking to hears you much better.

Download file http://custom-android-sciphone-n19.googlecode.com/files/asound.conf

```
adb pull /system/etc/asound.conf asound.conf.backup
adb push asound.conf /system/etc/
```