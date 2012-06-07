#! /usr/bin/perl

#Names
@names = qw {fred betty barney dino wilma pebbles bamm-bamm};

#Waiting for user to input. Control + D will end the input
print "Please enter index you want for the name. End with Ctrl+D(Unix Base) or Ctrl+Z(Win or DOS)\n";
chomp (@outputIndexes = <STDIN>);

#Here is no array bounds checking. Thanks to Perl, it will just be a (W uninitialized) rather than crash, which is pretty cool!
foreach (@outputIndexes) {
	print "Index: $_, Name: $names[$_-1]\n";
}
