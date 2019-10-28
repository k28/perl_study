#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Print readable and writable file name
#

use strict;
use warnings;

print "Please input dir path:";

chomp( my $dir_path = <STDIN> );

if ( $dir_path =~ /\A\s*\Z/ ) {
	# blank lins
	chdir or die "Cannot chdir to yor home directory: $!";
} else {
	chdir $dir_path or die "cannot chdir $dir_path: $!";
}

foreach ( glob '*' ) {
	print "$_\n";
}

