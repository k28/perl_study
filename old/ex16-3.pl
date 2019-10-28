#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Search current directory symlink path.
#

use strict;
use warnings;
use utf8;

# date の結果が英語で欲しいので環境変数のLANGをenにしておく
$ENV{'LANG'} = "en";

my $date = `date`;
print "$date";
if ( $date =~ /\AS/ ) {
	print "go Play\n";
} else {
	print "get to work\n";
}


