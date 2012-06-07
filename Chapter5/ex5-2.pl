#! /usr/bin/perl
use strict;

print "Enter some strings. I will align them to right with 20-characters column:\n";

#chomp is important here, otherwise we will get a 19-column alignment.
chomp (my @list = <STDIN>);
print "123456789012345678901234567890123456789012345678901234567890\n";

#Here is no count checking. The count of string's characters may be overflow.
#Quite dangerous.
foreach (@list) {
	printf "%20s\n",$_;
}