#! /usr/bin/perl
use strict;

print "Enter a position to align strings: ";
chomp (my $position = <STDIN>);
print "Enter some strings. I will align them to right with $position-characters column:\n";

#chomp is important here, otherwise we will get a ($position - 1)-column alignment.
chomp (my @list = <STDIN>);

print "1234567890" x ($position / 10), (1 .. $position % 10), "\n";

foreach (@list) {
    printf "%${position}s\n", $_;
}