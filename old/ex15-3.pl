#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Search current directory symlink path.
#

use strict;
use warnings;
use 5.010001;

die "usage: $0 {file path} ..." unless @ARGV > 0;


foreach (@ARGV) {
	chomp;
	my $what = '';
	when(not -e) { $what .= "Not Exist!";}
	when(-r _) { $what .= "R"; continue}
	when(-w _) { $what .= "W"; continue}
	when(-x _) { $what .= "X"; continue}

	say "[$what] $_";
}

