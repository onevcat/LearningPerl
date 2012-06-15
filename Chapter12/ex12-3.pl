#! /usr/bin/perl
use strict;

if (! @ARGV) {
	die "No File Name.\n";
}

foreach (@ARGV) {
	print "File $_ is readable, writable, and owned by you!\n" if -o -r -w;
}