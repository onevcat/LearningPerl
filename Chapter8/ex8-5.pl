#!/usr/bin/perl
use strict;

while (<>) { # take one input line at a time
	chomp;
	if (/((?<word>\w*a\b)(?<append>.{0,5}))/) {
		print "Matched: |$`<$&>$'|. \'word\' contains: \'$+{word}\'\n"; # the special match vars
		if ($+{append}) {
			print "\'append\' contains: \'$+{append}\'.\n";
		}
	} else {
		print "No match: |$_|\n"; }
}