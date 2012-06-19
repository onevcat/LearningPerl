#! /usr/bin/perl
use strict;

print "Change to directory with path: ";
chomp ( my $folederPath = <STDIN>);

my $dirChanged = ($folederPath =~ /\A\s*\z/) ? chdir : chdir $folederPath;

### Open current folder
opendir my $folderHandle, "." or die "Change DIR Failed! $!";
### and read the file list
foreach (sort readdir $folderHandle) {
    print "$_\n";
}