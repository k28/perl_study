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

my @numbers = (1 .. 1000);

my $numbers_total = total(@numbers);
print "The total of 1 to 1000 is $numbers_total.\n";


