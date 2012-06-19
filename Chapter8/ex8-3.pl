#!/usr/bin/perl
use strict;

while (<>) { # take one input line at a time
    chomp;
    if (/(\w*a\b)/) {
        print "Matched: |$`<$&>$'|. \$1 contains: \'$1\'\n"; # the special match vars
    } else {
        print "No match: |$_|\n"; }
}