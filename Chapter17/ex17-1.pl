#! /usr/bin/perl
use strict;

open FILE, '<', 'sample_text.txt' or die "Can not open file. $!";
chomp ( my @lines = <FILE>);
### @lines;

while (1) {
    print "Enter a patterns: ";
    chomp (my $pattern = <STDIN>);
    last if $pattern =~ /\A\s*\z/;    #Match the space line
    my @matched = eval {grep {/$pattern/} @lines};
    if ($@) {    #Pattern is invalid, match error.
        print "Error: $@";
    }
    else {
        my $matched = @matched;
        print "$matched lines is(are) matched:\n",map {"$_\n"} @matched;
    }
}
print "Exiting...\n";
