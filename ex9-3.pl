#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

my $fileName = $ARGV[0];
if ( ! defined $fileName ) {
	die "Usage: $0 filename";
}

my $outFileName = $fileName . ".out";

open INFILE, '<', $fileName
	or die "$!";
open OUTFILE, '>', $outFileName
	or die "$!";

while (my $line = <INFILE>) {
	chomp $line;
	$line =~ s/fred/\n/gi;
	$line =~ s/wilma/fred/gi;
	$line =~ s/\n/wilma/gi;
	print OUTFILE "$line\n";
}
