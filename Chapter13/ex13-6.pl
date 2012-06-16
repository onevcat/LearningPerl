#! /usr/bin/perl
use strict;
use File::Basename;
use File::Spec;

my ($source, $destination) = @ARGV;
### source: $source
### destination: $destination
if (-d $destination) {
	### destination is a directory.
	$destination = File::Spec->catfile ($destination, basename $source);
	### destination: $destination
}
link $source, $destination or die "Link File error. $!";
