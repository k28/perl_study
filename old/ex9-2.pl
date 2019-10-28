#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

my $fileName = $ARGV[0];
my $outFileName = $fileName . ".out";

open INFILE, '<', $fileName
	or die "$!";
open OUTFILE, '>', $outFileName
	or die "$!";

while (my $line = <INFILE>) {
	$line =~ s/fred/Larry/gi;
	print OUTFILE $line;
}
