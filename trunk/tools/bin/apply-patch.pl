#!/usr/bin/perl -w
# tool to apply patch thats produced via 'repo diff'
# usable really only for android project

use strict;

my $project = '';

while(<>) {
	chomp;
	s/\r//g;
    if (/^project (.*)$/) {

    	$project = $1;

    	close(PCH) if $project;

    	if (-e ($project)) {
    		print "patching project $project\n";
	    	open(PCH,"| patch -d $project -p1");
    	} else {
    		print "Skipping $project -- directory not found\n";
    		$project='';
    	} 
    } else {
	    print PCH "$_\n" if $project;
    }
}

close(PCH);