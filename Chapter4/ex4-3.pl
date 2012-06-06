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

#Calculate average of several numbers.
sub average
{
	#In case the divide 0 expection.
	if (@_) {
		#Average = Total / Count
		my $average = total(@_) / @_;	
	}
	
	#If the list is empty, it's OK to return a undef.
}


sub above_average
{
	my $average = average(@_);
	my @numbersAboveAverage;
	foreach (@_) 
	{
		if ($_ > $average) {
			push @numbersAboveAverage, $_
		}
	}
	@numbersAboveAverage;
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";