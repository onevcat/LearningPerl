#! /usr/bin/perl
use strict;

print "Enter a string: ";
chomp ( my $string = <STDIN> );
print "Enter a substring: ";
chomp ( my $substring = <STDIN> );

my $index = 0;
while ($index != -1) {
    $index = index($string, $substring, $index);
    if ($index == -1) {
        print "Process Over.\n" 
    }
    else {
        print "Find \'$substring\' in \'$string\' at index: $index\n";
        #Go on, try to find substring from character in next loop
        $index++;
    }
}
