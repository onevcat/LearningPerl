#! /usr/bin/perl
use strict;

#Calculate total of several numbers.
sub total 
{
	my $sum;
	foreach (@_) 
	{
		$sum += $_;
	}
	$sum;
}

my @numbers = (1..1000);
my $sum = total(@numbers);
print "Sum of $numbers[0] to $numbers[-1] is: $sum";