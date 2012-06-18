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

my $favNumber = 5;
given ($ARGV[0]) {
	when (! /\A[0-9]+\z/) {print "Input is NOT a number!\n"}
	when ($_%2 ~~ 0) {print "The number is even\n";continue}
	when ($_%2 ~~ 1) {print "The number is odd\n";continue}
	my @empty = ();
	my @divisors = divisors($_);
	when (@divisors ~~ @empty) {print "The number is prime.\n";continue}
	when ($_%$favNumber ~~ 0) {print "The number is divisible by $favNumber\n"}
}