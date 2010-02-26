#!/usr/bin/perl -w
# simple imagemagic converter to format the image (force cropping) 
# and output in the format that to565 expects.  usage of both should be:
#
# image2raw.pl < android-n19.png | to565 -rle > initlogo.rle
#    or
# image2raw.pl < android-n19.jpg | to565 -rle > initlogo.rle
#

use strict;
use Image::Magick;

my $image = Image::Magick->new(size=>'240x320');

$image->Read('-');

$image->Write(filename=>'RGB:-', compression=>'None');
 
