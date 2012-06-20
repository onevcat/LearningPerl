#! /usr/bin/perl
use strict;
#Waiting for user to input. Control + D will end the input
print "Input a list of strings (per string one line) and I will reverse it. End with Ctrl+D(Unix Base) or Ctrl+Z(Win or DOS)\n";
chomp (my @strings = <STDIN>);

#Reverse @strings
my @reverseStrings = reverse @strings;

### Print: @reverseStrings
print "Input Strings List: {@strings}\nReversed Strings List: {@reverseStrings}\n";