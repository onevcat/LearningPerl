#! /usr/bin/perl
use strict;

print "Change to directory with path: ";
chomp ( my $folederPath = <STDIN>);
my $dirChanged = ($folederPath =~ /\A\s*\z/) ? chdir : chdir $folederPath;

if ($dirChanged) {
	### Get all files (including dot beginning)
	foreach (sort glob '* .*') {
		print "$_\n";
	} 
}
else {
	die "Change DIR Failed! $!";
}