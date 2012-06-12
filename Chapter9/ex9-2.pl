#! /usr/bin/perl
## Copyright (C) 2012 by Yours Truly onevcat
use strict;

my $input = $ARGV[0];
if (!$input) {
	die "Please input a file name";
}
my $output = $input.".out";

my $inputFile;
if (! open $inputFile, '<', $input) {
	die "Open file $input failed: $!";
}
my $outputFile;
if (! open $outputFile, '>', $output) {
	die "Open file $output failed: $!";
}

while (<$inputFile>) {
	s/fred/Larry/gi;
	print $outputFile $_;
}