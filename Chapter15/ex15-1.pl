#! /usr/bin/perl
use strict;
use 5.010001;

my $number = int(1+rand 100);
print "Guess a number from 1 to 100: ";
my $input;
while ($input = <STDIN>) {
    chomp $input;
    given ($input) {
        when ($_ =~ /quit|exit|\A\s*\z/i) {print "Bye."; last}
        when ( ! /\A[0-9]+\z/) {print "Enter a number please.\n";}
        when ( $_ < $number) {print "Too low\nTry again: ";}
        when ( $_ > $number) {print "Too high\nTry again: ";}
        default {print "You are right, the answer is $number\n"; last}
	}
}
