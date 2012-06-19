#! /usr/bin/perl
use strict;

foreach (glob '*') {
    ### stat
    my( $atime, $mtime ) = (stat)[8,9];
    printf "%-20s %15d %15d\n", $_, $atime, $mtime; 
}