#!/usr/bin/perl
use strict;

while (<>) { # take one input line at a time
    chomp;
    if (/\p{Space}\z/) {
        print "$_=========\n";
    }
}