#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Print readable and writable file name
#

use strict;
use warnings;
use File::Basename;
use File::Spec::Functions;

die "usage: $0 {src} {dst}" unless @ARGV > 1;

my ($src, $dst) = @ARGV;

if ( -d $dst ) {
	my $fileName = basename $src;
	$dst = catfile($dst, $fileName);
}

if ( -e $dst ) {
	die "Can't rename $src to $dst: file $dst is exists\n";
}

rename $src => $dst or die "Can't rename $src to $dst: $!";

