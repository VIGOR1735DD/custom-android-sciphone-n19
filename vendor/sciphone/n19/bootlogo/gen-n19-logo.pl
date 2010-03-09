#!/usr/bin/perl -w
# simple imagemagic converter to format the image (force cropping) 
# and output in the format that to565 expects.  usage of both should be:
#
# gen-n19-logo.pl -b {build_name} -p {platform_version} -v {build_version} )< android-n19.png | to565 -rle > initlogo.rle
#    or
# gen-n19-logo.pl -b {build_name} -p {platform_version} -v {build_version} )< android-n19.jpg | to565 -rle > initlogo.rle
#

use strict;
use Getopt::Std;
use Image::Magick;

my %options = ();
getopts('b:p:v:',\%options);

$options{b}||='';
$options{p}||='';
$options{v}||='';

my $image = Image::Magick->new(size=>'240x320');

$image->Read('-');

$image->Annotate(pointsize=>'18', stretch=> 'Expanded', fill=>'white', text=>lc($options{b}), x=>60, y=>60);

$image->Annotate(pointsize=>'10', fill=>'#29d7c1', text=>lc($options{p}), x=>60, y=>90);

$image->Annotate(pointsize=>'10', fill=>'#29d7c1', text=>lc('build: '.$options{v}), x=>60, y=>105);

$image->Write(filename=>'RGB:-', compression=>'None');
 
