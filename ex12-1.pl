#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

foreach (@ARGV) {
	&checkFilePermission($_);
}

sub checkFilePermission {
	my $path = shift @_;
	chomp;
	print "$path is ";
	if ( ! -e $path ) {
		print " not exist\n";
		return 0;
	}
	if ( -r _ ) {
		print "R";
	} else {
		print "-";
	}
	if ( -w _ ) {
		print "W";
	} else {
		print "-";
	}
	if ( -x _ ) {
		print "X";
	} else {
		print "-";
	}
	print "\n";
}

