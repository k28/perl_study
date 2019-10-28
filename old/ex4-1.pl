#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

sub total {
	my $total;
	foreach (@_) {
		chomp;
		$total += $_;
	}

	$total;
}

my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines: ";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";


