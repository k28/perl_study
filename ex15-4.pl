#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Search current directory symlink path.
#

use strict;
use warnings;
use 5.010001;

die "usage: $0 {number}" unless @ARGV > 0;

foreach (@ARGV) {
	chomp;
	print "Checking $_... ";
	when(not /\A\d+\Z/) { say "Not a number!"}

	my @divisors = &divisors($_);

	when (@divisors ~~ []) {say "number is a prime number"};
	default { say "Divisors is @divisors"};
}

sub divisors {
	my $number = shift;

	my @divisors = ();
	foreach my $divisor ( 2 .. ($number/2) ) {
		push @divisors, $divisor unless $number % $divisor;
	}

	return @divisors;
}

