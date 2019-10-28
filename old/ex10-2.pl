#! /usr/bin/perl

use strict;
use warnings;

my $debug = $ENV{DEBUG};
my $answer = int(1 + rand 100);

print "Answer is $answer\n" if $debug;

while (1) {
	print "Please input number: ";
	chomp(my $line = <STDIN>);
	if ($line =~ /quit|exit|\A\s*\z/i)
	{
		print "you given up, answer is $answer\n";
		last;
	}
	if ($line < $answer) {
		print "Too low\n";
	} elsif ($line == $answer) {
		print "Correct!!!\n";
		last;
	} else{
		print "Too high\n";
	}
}

