#! /usr/bin/perl
use strict;

print "Enter a position to align strings: ";
chomp (my $position = <STDIN>);
print "Enter some strings. I will align them to right with $position-characters column:\n";

#chomp is important here, otherwise we will get a ($position - 1)-column alignment.
chomp (my @list = <STDIN>);

#Here is no count checking. The count of string's characters may be overflow.
#Quite dangerous, maybe expand the align column number to the max count of string's character will be a good  idea.
#See checkCount
$position = checkCount($position, @list);

print "1234567890" x ($position / 10), (1 .. $position % 10), "\n";

foreach (@list) {
	printf "%${position}s\n", $_;
}

sub checkCount
{
	my $maxLength = shift @_;
	foreach (@_) {
		length > $maxLength ? $maxLength = length : 0;
	}
	$maxLength;
}