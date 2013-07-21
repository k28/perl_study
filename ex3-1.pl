#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

my @lines;

chomp(@lines = <STDIN>);

@lines = reverse @lines;

print "@lines\n";

