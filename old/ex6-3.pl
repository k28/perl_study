#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

my $maxLength = &maxLength(keys %ENV);
my $format = "%${maxLength}s:%s\n";

foreach my $key (keys %ENV) {
	printf $format, $key, $ENV{$key};	
}

sub maxLength {
	my $maxLength = 0;
	foreach my $word (@_) {
		if ($maxLength < length $word) {
			$maxLength = length $word;
		}
	}

	return $maxLength;
}

