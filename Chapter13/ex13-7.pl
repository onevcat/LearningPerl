#! /usr/bin/perl
use strict;
use File::Basename;
use File::Spec;

my $softArg = shift @ARGV;
unshift @ARGV, $softArg if $softArg ne "-s";

my ($source, $destination) = @ARGV;
### source: $source
### destination: $destination
if (-d $destination) {
    ### destination is a directory.
    $destination = File::Spec->catfile ($destination, basename $source);
    ### destination: $destination
}
if ($softArg eq "-s") {
    symlink $source, $destination or die "Link File error. $!";
} else {
    link $source, $destination or die "Link File error. $!";
}
