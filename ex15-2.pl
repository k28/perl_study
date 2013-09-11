#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Search current directory symlink path.
#

use strict;
use warnings;
use 5.010001;

die "usage: $0 {number}" unless @ARGV > 0;

given ($ARGV[0]) {
	when(not $_ % 3) {print "Fizz "; continue}
	when(not $_ % 5) {print "Bin "; continue}
	when(not $_ % 7) {print "Sausage";}
}

print "\n";
