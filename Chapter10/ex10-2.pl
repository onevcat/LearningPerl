#! /usr/bin/perl
use strict;
use 5.010;

my $debugMode = $ENV{DEBUG} // 1;
my $number = int(1+rand 100);
print "DEBUG: the number is $number\n" if $debugMode;

print "Guess a number from 1 to 100: ";
my $input;
while ($input = <STDIN>) {
    chomp $input;
    print "DEBUG: the input is $input\n" if $debugMode;
    if ($input =~ /quit|exit|\A\s*\z/i) {
        ### Exiting...	
        print "DEBUG: Exiting...\n" if $debugMode;
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
        print "DEBUG: Exiting...\n" if $debugMode;
        last;
    }
}