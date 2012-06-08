#! /usr/bin/perl
use strict;

my %persons = (
	fred => 'flintstone',
	barney => 'rubble',
	wilma => 'flintstone',
);

print "Enter a given name: ";
chomp (my $givenName = <STDIN>);

#-Mdiagnostics is used. print undef var may cause a warning.
if ($persons{$givenName}) {
	print "Family name is: $persons{$givenName}\n";
}
else {
	print "Family name NOT found\n";
}
