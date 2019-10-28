#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Search current directory symlink path.
#

use strict;
use warnings;
use utf8;
use 5.010;
use autodie;

foreach (<*>) {
	chomp;
	my ($atime, $mtime) = (stat $_)[8, 9];
	print "$_	$atime	$mtime\n";
}


