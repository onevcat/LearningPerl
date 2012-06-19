#! /usr/bin/perl
use strict;
use 5.010001;

print "Please enter a number: ";
chomp (my $number = <STDIN>);
given ($number) {
    when ($_%3 == 0) {print "Fizz "; continue}
    when ($_%5 == 0) {print "Bin "; continue}
    when ($_%7 == 0) {print "Sausage";continue}
    print "\n";
}
