#!/usr/bin/perl
use strict;

while (<>) { # take one input line at a time
    chomp;
    if (/(?<word>\w*a\b)/) {
        print "Matched: |$`<$&>$'|. \'word\' contains: \'$+{word}\'\n"; # the special match vars
    } else {
        print "No match: |$_|\n"; }
}