#! /usr/bin/perl
use strict;

# Waiting for user input
print "Please enter circle's radius: ";

#Read the input to $radius
chomp (my $radius = <STDIN>);

### Radius * 2 * PI = perimeter
my $perimeter = $radius * 2 * 3.141592654;

print "Circle Radius: $radius\nPerimeter: $perimeter\n";