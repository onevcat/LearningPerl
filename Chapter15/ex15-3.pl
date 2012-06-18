#! /usr/bin/perl
use strict;
use 5.010001;

foreach (@ARGV) {
		print "file $_: ";
		when (! -e) {print "NOT exist.\n"}
		when (-r) {print "readable "; continue}
		when (-w) {print "writable "; continue} 
		when (-x) {print "executable";continue}
		print "\n";	#It seems this line behaved as a default block. Is that correct?
}