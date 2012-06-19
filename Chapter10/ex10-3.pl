#! /usr/bin/perl
use strict;
use	5.010;

#Test Environment Variables
$ENV{Test_ENV_VAR_1} = 0;
$ENV{Test_ENV_VAR_2} = "0";
$ENV{Test_ENV_VAR_3} = "";
$ENV{Test_ENV_VAR_4} = undef;

my @keys = sort keys %ENV;
my $basePosition = maxLength(@keys) + 5;
my $valuePosition;
foreach (@keys) {
    my $value = $ENV{$_} // "undefined value";
    $valuePosition = $basePosition  - length($_) + length($value);
    printf "%s%${valuePosition}s\n",$_,$value;
}

sub maxLength {
    my $maxLength;
    foreach (@_) {
        length > $maxLength ? $maxLength = length : 0;
    }
    $maxLength;
}