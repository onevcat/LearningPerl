#! /usr/bin/perl
use strict;

foreach (glob '* .*') {
    if (-l) {
        my $des = readlink;	
        print "$_ -> $des\n";
    }
} 