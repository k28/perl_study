#! /usr/bin/perl

use strict;
use warnings;

#check file list
my %do_files;
foreach (@ARGV) {
	$do_files{$_} = 1;
}

while (<>) {
	if (/## Copyright/) {
		delete $do_files{$ARGV};
	}
}

@ARGV = sort keys %do_files;

# change files
$^I = ".bak";
while (<>) {
	if (/#!/) {
		$_ .= "## Copyright (C) 2013 by K.Hatano\n";
	}	
	print;
}

