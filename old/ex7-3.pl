#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

while (<>) {
	chomp;
	if (/\./) {
		print "$_\n";
	}
}

