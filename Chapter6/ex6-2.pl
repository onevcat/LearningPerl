#! /usr/bin/perl
use strict;

my %words;
while (<>) {
    chomp;
    $words{$_} ++;
}

my @keys = sort keys %words;
foreach (@keys) {
    print "Word: $_, Count: $words{$_}\n";
}