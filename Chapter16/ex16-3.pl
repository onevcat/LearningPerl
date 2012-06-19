#! /usr/bin/perl
use strict;

my $date = `date`;
print $date;
( $date =~ /\S+ \S+ \S+(六|日)/ ) ? print "go play\n" : print "get to work\n";
