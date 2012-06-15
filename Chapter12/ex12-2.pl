#! /usr/bin/perl
use strict;

my $oldestFileName;
my $oldestFileTime;
foreach (@ARGV) {
	if (-M > $oldestFileTime) {
		$oldestFileName = $_;
		$oldestFileTime = -M;
	}
}

$oldestFileName ? print "Oldest File: $oldestFileName, Age: $oldestFileTime days\n" : die "No File Name.\n";