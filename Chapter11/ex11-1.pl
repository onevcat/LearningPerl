#! /usr/bin/perl
use strict;
use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014} };
foreach (sort  keys %modules) {
	print "$_\n";
}