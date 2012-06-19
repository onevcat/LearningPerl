#! /usr/bin/perl
use strict;

sub testFile {
    print "File name:\"$_[0]\"";
    (-e $_[0]) ? print " Existing:YES" : print " Existing:NO";
    (-r $_[0]) ? print " Readable:YES" : print " Readable:NO";
    (-w $_[0]) ? print " Writable:YES" : print " Writable:NO";
    (-w $_[0]) ? print " Executable:YES" : print " Executable:NO";
    print "\n";
}

foreach (@ARGV) {
    testFile($_);	
}
