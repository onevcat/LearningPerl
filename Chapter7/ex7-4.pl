#! /usr/bin/perl
use strict;

while (<>) {
	if (/[A-Z]+[a-z]+[A-Z]*/ && !/[a-z]+[A-Z]+[a-z]+[A-Z]*/) {
		print;	
	}
}