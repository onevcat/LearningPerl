#!/usr/bin/perl
while (<>) { # take one input line at a time
chomp;
if (/YOUR_PATTERN_GOES_HERE/) {
    print "Matched: |$`<$&>$'|\n"; # the special match vars
} else {
    print "No match: |$_|\n"; }
}