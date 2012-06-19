#! /usr/bin/perl
use strict;
use 5.010;

sub INTHandler{say  "SIGINT...Exiting"; exit;}
sub USR1Handler{state $count; $count++; say "SIGUSR1...$count";}
sub HUPHandler{state $count; $count++; say "SIGHUP...$count";}

$SIG{'INT'} = 'INTHandler';
$SIG{'USR1'} = 'USR1Handler';
$SIG{'HUP'} = 'HUPHandler';

say "PID: $$";
while (1) {
    sleep 1;
}