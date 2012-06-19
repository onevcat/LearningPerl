#! /usr/bin/perl
use strict;

print "Change to directory with path: ";
chomp ( my $folederPath = <STDIN>);
### Try to change the dir to $folederPath
my $dirChanged = ($folederPath =~ /\A\s*\z/) ? chdir : chdir $folederPath;

if ($dirChanged) {
    foreach (sort glob '*') {
        print "$_\n";
    } 
}
else {
    die "Change DIR Failed! $!";
}