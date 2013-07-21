#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

while (<>) {
	chomp;
	if (/(?<word>\b\w*a\b)/) {
		#print "Matched: |$`<$&>$'|\n";
		print "word contains '$+{word}'\n";
	} else {
		print "No match |$_|\n";
	}
}

