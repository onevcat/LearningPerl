#! /usr/bin/perl

print "To calculate product for two numbers, please enter the numbers:\n";

#Waiting for the first number
print "First Number: ";
chomp ($num1 = <STDIN>);

#Waiting for the second number
print "Second Number: ";
chomp ($num2 = <STDIN>);

#Causing:
#There is no numeric checking. Either scalar var is untranslatble string will cause a W numeric and a 0(numeric) result
print "$num1 * $num2 = " . ($num1 * $num2) . "\n";