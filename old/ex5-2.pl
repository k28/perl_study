#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

print "Enter some lines, then press Ctrl-D:\n";
chomp (my @lines = <STDIN>);

print "1234567890" x 5, "12345\n";
foreach (@lines) {
	printf "%20s\n", $_;
}

