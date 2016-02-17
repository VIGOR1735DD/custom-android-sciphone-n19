# Introduction #

The N19 image comes with a fixed IP address for android.clients.google.com that is no longer valid. The only way to fix it is to update a file called "hosts" on your filesystem.


# Details #

To update hosts, first download the [patched hosts file](http://custom-android-sciphone-n19.googlecode.com/files/hosts) and copy it to a dir (we will call this dir HOME), then execute these steps (valid on linux and windows):
  * cd HOME
  * adb push hosts /system/etc/hosts
Then, your phone should be enabled to do all the syncing once again. This patch should correct all future issues with google changing the IP address of the checkin servers.

# **NOTE** #
If you browser saves the file as "hosts.txt" (mine did, and it is firefox) the second line should be like this:
  * adb push hosts.txt /system/etc/hosts