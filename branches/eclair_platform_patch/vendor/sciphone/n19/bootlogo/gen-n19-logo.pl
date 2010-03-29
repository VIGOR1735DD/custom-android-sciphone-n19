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

my $vert_coord=210;

$image->Annotate(pointsize=>'18', stretch=> 'Expanded', fill=>'white', text=>'eclair', x=>100, y=>$vert_coord);

$image->Annotate(pointsize=>'12', stretch=> 'Expanded', fill=>'white', text=>lc($options{b}), x=>105, y=>$vert_coord+13);

$vert_coord=300;

$image->Annotate(pointsize=>'10', fill=>'#29d7c1', text=>lc($options{p}), x=>3, y=>$vert_coord-13);

$image->Annotate(pointsize=>'10', fill=>'#29d7c1', text=>lc('build: '.$options{v}), x=>3, y=>$vert_coord);

$image->Annotate(pointsize=>'9', fill=>'white', text=>'build date:', x=>125, y=>$vert_coord-13);
$image->Annotate(pointsize=>'9', fill=>'white', text=> scalar localtime(), x=>125, y=>$vert_coord);

$image->Annotate(pointsize=>'9', fill=>'white', text=>'http://code.google.com/p/custom-android-sciphone-n19/', x=>3, y=>$vert_coord + 13);


$image->Write(filename=>'RGB:-', compression=>'None');
 
