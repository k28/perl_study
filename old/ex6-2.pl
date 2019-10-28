#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

my %words_count_hash;

while(<>){
	chomp;
	
	if (exists $words_count_hash{$_}) {
		$words_count_hash{$_} += 1;
	} else {
		$words_count_hash{$_} = 1;
	}
}

foreach my $key (sort keys %words_count_hash) {
	my $count = $words_count_hash{$key};
	print "$key : $count\n";
}

