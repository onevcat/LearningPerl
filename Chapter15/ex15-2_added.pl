#! /usr/bin/perl
use strict;
use 5.010001;

my $number;
my $found;
while (! $found) {
    my $count = 0;
    given (++$number) {
        when ($_%3 == 0) {$count++; continue}
        when ($_%5 == 0) {$count++; continue}
        when ($_%7 == 0) {$count++; continue}
        $found = ($count == 3) ? 1 : 0;
    }
}
print "The number is $number\n";
