#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Print readable and writable file name
#

use strict;
use warnings;
use 5.010;

die print "usage : $0 {file list}\n" unless @ARGV;

foreach (@ARGV) {
	say $_ if -o -r -w;
}

