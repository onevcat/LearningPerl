#! /usr/bin/perl
use strict;
use DateTime;

my $date = DateTime->now();
### $date
my $inputDate = DateTime->new(
				year => $ARGV[0],
				month => $ARGV[1],
				day => $ARGV[2]
				);
### $inputDate
my $duration = $date - $inputDate;
### $duration
my @units = $duration->in_units( qw(years months days) );

printf "%d years, %d months, and %d days\n", @units;