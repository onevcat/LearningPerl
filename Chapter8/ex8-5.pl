#!/usr/bin/perl
use strict;

while (<>) { # take one input line at a time
	chomp;
	if (/(?<word>\w*a\b(?<append>.{0,5}))/) {
		print "Matched: |$`<$&>$'|. \'word\' contains: \'$+{word}\'. \'append\' contains: \'$+{append}\'.\n"; # the special match vars
	} else {
		print "No match: |$_|\n"; }
}