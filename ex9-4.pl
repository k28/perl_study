#! /usr/bin/perl

use strict;
use warnings;

$^I = ".bak";

while (<>) {
	if (/#!/) {
		$_ .= "## Copyright (C) 2013 by K.Hatano\n";
	}	
	print;
}

