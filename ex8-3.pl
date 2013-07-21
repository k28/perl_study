#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

while (<>) {
	chomp;
	if (/(\b\w*a\b)/) {
		#print "Matched: |$`<$&>$'|\n";
		print "\$1 contains '$1'\n";
	} else {
		print "No match |$_|\n";
	}
}

