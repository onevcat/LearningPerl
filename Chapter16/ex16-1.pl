#! /usr/bin/perl
use strict;

# Change to home directory successfully
chdir or die "Change directory failed. $!";
# call system command ls
system 'ls -l';