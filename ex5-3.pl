#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

print "Enter some lines, then press Ctrl-D:\n";
chomp (my @lines = <STDIN>);
my $column = shift @lines;

print "1234567890" x (($column / 10) + 1), "12345\n";
foreach (@lines) {
	printf "%${column}s\n", $_;
}

