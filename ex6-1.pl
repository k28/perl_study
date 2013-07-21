#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

my %any_name = (
	eriko => "HATANO",
	kazuya => "HATANO",
	masashi => "Miyagi",
	Junya => "Yamashita",
);

print "Please enter name :\n";
while(<STDIN>) {
	chomp;
	if ( exists $any_name{$_}) {
		my $firstName = $any_name{$_};
		print "first name is $firstName\n";
	} else {
		print "Sorry, I don't know...\n"
	}
}

