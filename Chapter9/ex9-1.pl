#! /usr/bin/perl
## Copyright (C) 2012 by Yours Truly onevcat
use strict;

my $what = 'fred|barney';
my $_ = 'whosfredbarneyfred';
if (/($what){3}/) { #if no (), it will be /fred|barneyyy/.
	print "Matched: |$`<$&>$'|\n"; # the special match vars
} else {
	print "No match: |$_|\n"; 
}