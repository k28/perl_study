#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

while (<>) {
	chomp;
	if (/(\S)\1/) {
		print "$_\n";
	}
}

