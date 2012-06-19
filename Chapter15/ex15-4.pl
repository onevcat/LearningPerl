#! /usr/bin/perl
use strict;
use 5.010001;

sub divisors {
    my $number = shift;
    my @divisors = ();
    foreach my $divisor ( 2 .. ( $number/2 ) ) {
        push @divisors, $divisor unless $number % $divisor; 
    }
    return @divisors; 
}

given ($ARGV[0]) {
    when (! /\A[0-9]+\z/) {print "Input is NOT a number!\n"}
    my @empty = ();
    my @divisors = divisors($_);
    when (@divisors ~~ @empty) {print "The number is prime.\n"}
    default {print "@divisors\n"}
}