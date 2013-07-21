#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014} };

while ((my $key, my $value) = each %modules) {
	print "$key => $value\n";
}
