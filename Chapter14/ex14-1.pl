#! /usr/bin/perl
use strict;

my @numbers;
while ( <> ) {
	push @numbers, split;
}
foreach (sort {$a <=> $b} @numbers) {
	printf "%10g\n",$_;
}