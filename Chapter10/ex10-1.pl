#! /usr/bin/perl
use strict;

my $number = int(1+rand 100);
print "Guess a number from 1 to 100: ";
my $input;
while ($input = <STDIN>) {
    chomp $input;
    if ($input =~ /quit|exit|\A\s*\z/i) {
        ### Exiting...	
        last;
    }
    if ($input < $number) {
        print "Too low\nTry again: ";
        next;
    } elsif ($input > $number) {
        print "Too high\nTry again: ";
        next;
    } else {
        print "You are right, the answer is $number\n";
        last;
    }
}