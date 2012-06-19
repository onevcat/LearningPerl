#! /usr/bin/perl

#Waiting for user to input. Control + D will end the input
print "Please enter several strings (per string one line) and I will sort it. End with Ctrl+D(Unix Base) or Ctrl+Z(Win or DOS)\n";
chomp (@strings = <STDIN>);

#sort the input strings
@sortedStrings = sort @strings;

#Formatted output
print "Output sorted strings in one line:\n";
print "@sortedStrings\n\n";
print "Output sorted strings in seperated lines:\n";
foreach (@sortedStrings) {
    print "$_\n";
}