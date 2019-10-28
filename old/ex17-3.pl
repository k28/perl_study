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

sub timeToString {
	my $time = shift @_;
	my ($aY, $aM, $aD) = (localtime $time)[5, 4, 3];
	$aY += 1900;
	$aM += 1;
	my $atimeString = sprintf '%4d-%02d-%02d', $aY, $aM, $aD;

	return $atimeString;
}

foreach (<*>) {
	chomp;
	my ($atime, $mtime) = (stat $_)[8, 9];
	my $atimeString = timeToString($atime);
	my $mtimeString = timeToString($mtime);
	print "$_	$atimeString	$mtimeString\n";
}


