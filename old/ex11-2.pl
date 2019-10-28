#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

use strict;
use warnings;

use DateTime;

my ($year, $month, $day) = @ARGV;
if ( ! defined($year) ||
	! defined($month) ||
	! defined($day) ) {
	print "Usage : $0 {year} {month} {day}\n";
	exit 1;
}

my $user_date = DateTime->new(
	year	=> $year,
	month	=> $month,
	day		=> $day,
);

my $current_date = DateTime->from_epoch( epoch => time() );

my $duration = $current_date - $user_date;

my @units = $duration->in_units( qw(years months days) );

printf "%d years, %d months, and %d days\n", @units;

