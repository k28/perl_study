#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

my $latestFile;
my $oldestDate = 0;

die print "usage : $0 {file list}\n" unless @ARGV;
#if ( @ARGV == 0 ) {
#    print "usage : $0 {file list}\n";
#    exit 1;
#}

foreach (@ARGV) {
	my $date = &lastModifiedDate($_);
	($latestFile, $oldestDate) = ($_, $date)
		if $date > $oldestDate;
#    if ($date > $oldestDate) {
#        $latestFile = $_;
#        $oldestDate = $date;
#    }
}

my $dateString = gmtime $oldestDate;
printf "Oldest date is %s, file is %.1f old.\n", $latestFile , $oldestDate;

# -------------------------- #

sub lastModifiedDate {
	my $file = shift @_;
	return (-M $file);
}

sub checkFilePermission {
	my $path = shift @_;
	chomp;
	print "$path is ";
	if ( ! -e $path ) {
		print " not exist\n";
		return 0;
	}
	if ( -r _ ) {
		print "R";
	} else {
		print "-";
	}
	if ( -w _ ) {
		print "W";
	} else {
		print "-";
	}
	if ( -x _ ) {
		print "X";
	} else {
		print "-";
	}
	print "\n";
}

