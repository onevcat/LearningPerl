#! /usr/bin/perl
use 5.010;
say "Checking the number <$ARGV[0]>";
my $favorite = 42;
given( $ARGV[0] ) {
    when( ! /\A\d+\Z/ ) { say "Not a number!" }
    my @divisors = divisors( $ARGV[0] );
    when( @divisors ~~ 2 ) { # 2 is in @divisors
        say "$_ is even";
        continue; 
    }
    when( !( @divisors ~~ 2 ) ) { # 2 isn't in @divisors 
        say "$_ is odd";
        continue;
    }
    when( @divisors ~~ $favorite ) {
        say "$_ is divisible by my favorite number"; continue;
    }
    when( $favorite ) { # $_ ~~ $favorite 
        say "$_ is my favorite number"; continue;
    }
    my @empty;
    when( @divisors ~~ @empty ) { say "Number is prime" }
    default { say "$_ is divisible by @divisors" } 
}
	
sub divisors {
    my $number = shift;
    my @divisors = ();
    foreach my $divisor ( 2 .. ($ARGV[0]/2 + 1) ) {
    push @divisors, $divisor unless $number % $divisor; }
    return @divisors; 
}