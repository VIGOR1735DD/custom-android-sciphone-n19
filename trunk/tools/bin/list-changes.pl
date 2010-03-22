#!/usr/bin/perl -w

use strict;

open(REPO,'repo status|');

my $project = '';

while(<REPO>) {
    chomp;
    s/\r//g;

    if (/^project (\S+)\s+/) {
        $project = $1;
    } elsif (/^.{3}\t(.*)$/) {
        my $file = $1;
        next if $file=~/toolchain/;
        print "$project$file\n";
    }
}

close(REPO);

print `find vendor/sciphone -type f`
