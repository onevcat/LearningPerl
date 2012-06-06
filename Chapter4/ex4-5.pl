#! /usr/bin/perl
use strict;
use 5.010;

sub greet
{
	state @persons;
	my $currentPerson = $_[0];
	if (@persons) 
	{
		print "Hi $currentPerson! I've seen: @persons\n";
	}
	else 
	{
		print "Hi $currentPerson! You are the first one here!\n";
	}
	push @persons, $currentPerson;
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");