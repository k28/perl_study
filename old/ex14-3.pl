#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Search current directory symlink path.
#

use strict;
use warnings;

print "Please input strings:";
chomp(my $string = <STDIN>);

print "Please input search string:";
chomp(my $seach = <STDIN>);

my $where = 0;

while ($where = index($string, $seach, $where)) {
	last if $where == -1;
	print "$where\n";
	$where++;
}

