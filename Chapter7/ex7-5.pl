#! /usr/bin/perl
use strict;

while (<>) {
	if (/(\P{Space})\g{1}/) {
		print;	
	}
}