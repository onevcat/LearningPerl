#! usr/bin/perl
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

my @fred = qw { 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on seperate lines: ";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";