#! /usr/bin/perl
## Copyright (C) 2012 by Yours Truly onevcat
use strict;

### @ARGV
my %filesToExcute;
foreach (@ARGV) {
	$filesToExcute{$_} = 1;
}
while (<>) {
	if (/\A## Copyright/) {
		delete $filesToExcute{$ARGV};
	}
}
### %filesToExcute
@ARGV = keys %filesToExcute;
### @ARGV
$^I = ".bak";
while (<>) {
	if (/\A#!/) {
		$_ .= "## Copyright (C) 2012 by Yours Truly onevcat\n";
	}
	print;
}
