#! /usr/bin/perl
use strict;

foreach (glob '*') {
    my ($atime, $mtime) = map {
        my @localYMD = (localtime $_)[5,4,3];
        sprintf "%4d-%02d-%02d",$localYMD[0]+1900,$localYMD[1]+1,$localYMD[2];
    } (stat)[8,9];
    printf "%-20s %15s %15s\n", $_, $atime, $mtime; 
}