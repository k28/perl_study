#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

my @list;
chomp(@list = <STDIN>);

@list = sort @list;

foreach (@list) {
	print "$_\n";
}

