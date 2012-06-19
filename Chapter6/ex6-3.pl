#! /usr/bin/perl
use strict;

my @keys = sort keys %ENV;
my $basePosition = maxLength(@keys) + 5;
my $valuePosition;
foreach (@keys) {
    $valuePosition = $basePosition  - length($_) + length($ENV{$_});
    printf "%s%${valuePosition}s\n",$_,$ENV{$_};
}

sub maxLength
{
    my $maxLength;
    foreach (@_) {
        length > $maxLength ? $maxLength = length : 0;
    }
    $maxLength;
}