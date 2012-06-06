#! usr/bin/perl
use strict;
use 5.010;

sub greet
{
	state $lastPerson;
	my $currentPerson = $_[0];
	if ($lastPerson) 
	{
		print "Hi $currentPerson! $lastPerson is also here!\n";
	}
	else 
	{
		print "Hi $currentPerson! You are the first one here!\n";
	}
	$lastPerson = $currentPerson;
}

greet("Fred");
greet("Barney");