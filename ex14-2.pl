#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Search current directory symlink path.
#

use strict;
use warnings;

my %last_name = qw{
	fred flintstone Wilma Flintstone Barney Rubble
	betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

sub by_last_name {
	"\L$last_name{$a}" cmp "\L$last_name{$b}"
		or
	"\L$a" cmp "\L$b"
}

foreach (sort by_last_name keys %last_name) {
	print "$_ : $last_name{$_}\n";
}

