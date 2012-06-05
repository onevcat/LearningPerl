#! /usr/bin/perl

# Waiting for user input
print "Please enter circle's radius: ";

#Read the input to $radius
chomp ($radius = <STDIN>);

#If the user's input less than 0 (numeric), assign 0 to radius to ensure the output is 0
if ($radius < 0) {
	$radius = 0;
}

### Radius * 2 * PI = perimeter
$perimeter = $radius * 2 * 3.141592654;

print "Circle Radius: $radius\nPerimeter: $perimeter\n";