#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

my $last_geet_name = "";

sub greet {
	my ($name) = shift @_;
	if ( $last_geet_name eq "" )
	{
		print "Hi $name! You are the first one here!\n";
	}
	else
	{
		print "Hi $name! $last_geet_name is also here!\n";
	}

	$last_geet_name = $name;
}

&greet("Fread");
&greet("Barney");

