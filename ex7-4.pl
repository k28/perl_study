#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

while (<>) {
	chomp;
	if (/^[A-Z][a-z]+/) {
		print "$_\n";
	}
}

