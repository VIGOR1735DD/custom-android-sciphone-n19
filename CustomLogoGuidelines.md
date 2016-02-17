# Introduction #

These are the guidelines that should be followed when adding the version number/name for the [build logo](http://custom-android-sciphone-n19.googlecode.com/files/android-n19.png).


# Details #

![![](http://custom-android-sciphone-n19.googlecode.com/files/android-n19.png)](http://custom-android-sciphone-n19.googlecode.com/files/android-n19.png)

## Image Creation ##

  * **Version name** (e.g. Cupcake, Donut, Eclair, etc.) should be put on the blank part above the androids.
  * **Build number build state and android version number** (v0.2 unstable - 1.5) should be put like the pattern between the parentheses below the androids row.
  * **Sizes of the fonts**: For the version name, it should be something between 18-20 px; for the build number, build state and android version number should be 10px.
  * image must be 240x320 pixels

All fonts should be white 0xFFFFFF arial narrow bold.

It would be nice if we included the Version logo (the ones google uses, like an eclair, a donut, etc.) at the right side of the version name.

## Image Conversion ##

After the image is created, use 'raw' format in photoshop to save it, then use to565 utility to convert it to rle format
```
to565 -rle < yourfile.raw > initlogo.rle
```

Alternatively fetch the tools/bin/ files from the subversion (it contains to565 as well), and use:
```
mage2raw.pl < android-n19.png | to565 -rle > initlogo.rle
```

The perl script requires perl installed and also 'perlmagick' package from debian/ubuntu distributions.

Some auto-generation of the build should make use of this and inject build number on the picture.

## Placement onto ramdisk ##

Unpack ramdisk.uimg that you're currently using, place the file next to init and init.rc, pack it back (see [RepackRootfs](RepackRootfs.md)) flash it to your phone, and there you go