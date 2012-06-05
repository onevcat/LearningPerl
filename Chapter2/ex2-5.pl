#! /usr/bin/perl

print "To paste the string for some number times, please enter the string(first) and the number(later):\n";

#Waiting for the string. No chomp because we want multiple lines output
print "String: ";
$stringToRepeat = <STDIN>;

#Waiting for the number
print "Number: ";
chomp ($repeatNumber = <STDIN>);

#Causing:
#There is no numeric and string checking. If an untranslatble string is input as the number parameter, you will get a (W numeric) and no result
print  "Result is: \n" . $stringToRepeat x $repeatNumber;
