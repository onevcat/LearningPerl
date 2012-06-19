#! /usr/bin/perl
use strict;

open STDOUT, '>', 'ls.out' or die "Write to file ls.out error. $!";
open STDERR, '>', 'ls.err' or die "Write to file ls.err error. $!";
# Change to home directory successfully
chdir or die "Change directory failed. $!";
# call system command ls
system 'ls -l' or die "Execute \'ls\' failed. $!";
