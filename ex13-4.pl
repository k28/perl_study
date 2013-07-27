#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Print readable and writable file name
#

use strict;
use warnings;

die "usage: $0 {files}" unless @ARGV;

foreach (@ARGV) {
	unlink $_ or warn "Can't unlink $_:$!";
}

