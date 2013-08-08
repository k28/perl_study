#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Search current directory symlink path.
#

use strict;
use warnings;
use 5.010001;

my $answer = int(1 + rand 100);

while (1) {
	print "Please input number: ";
	chomp(my $line = <STDIN>);
	given ($line) {
		when ($_ =~ /quit|exit|\A\s*\z/i) {
			print "you given up, answer is $answer\n";
			last;
		}
		when ($_ < $answer) {
			print "Too low\n";
		}
		when ( $_ == $answer ) {
			print "Correct!!!\n";
			last;
		}
		when ($_ > $answer ) {
			print "Too high\n";
		}
	}
}


