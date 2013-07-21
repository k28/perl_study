#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

sub total {
	my $total;
	foreach (@_) {
		$total += $_;
	}

	$total;
}

sub average {
	my $list_count = @_;
	if ($list_count <= 0) {
		return 0;
	}

	my $total = total(@_);
	$total = $total / $list_count;
}

sub above_average {
	my $average = average(@_);
	my @above;
	foreach (@_) {
		if ($average < $_) {
			push @above, $_;
		}
	}

	@above;
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";


