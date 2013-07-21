#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

my @personlist = qw"fred betty barney dino wilma pebbles bamm-bamm";

my @list;
chomp(@list = <STDIN>);

foreach (@list) {
	print "$personlist[$_ - 1]\n";
}

