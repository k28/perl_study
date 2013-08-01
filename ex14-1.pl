#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Search current directory symlink path.
#

use strict;
use warnings;

#my @some_numbers = (
#    17,
#    1000,
#    04,
#    1.50,
#    3.141519,
#    -10,
#    1.5,
#    4,
#    2001,
#    90210,
#    666
#);

my @some_numbers;
push @some_numbers, split while <>;

my @numbrs = sort { $a <=> $b } @some_numbers;

foreach (@numbrs) {
	printf "%10g\n", $_;
}

