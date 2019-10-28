#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

my $what = "kita|foo";

while (<>) {
	chomp;
	if ( /($what){3}/) {
		print "match: $_\n";
	}
}
