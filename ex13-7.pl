#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Print readable and writable file name
#

use strict;
use warnings;
use File::Basename;
use File::Spec::Functions;

die "usage: $0 [-s] {src} {dst}" unless @ARGV > 1;

my $isSymb = 0;

if ( $ARGV[0] eq "-s" ) {
	my ($hoge, $src, $dst) = @ARGV;
	$dst = &dstPathMake($src, $dst);
	symlink $src => $dst or die "Can't hard link '$src' to '$dst': $!\n";
} else {
	my ($src, $dst) = @ARGV;
	$dst = &dstPathMake($src, $dst);
	link $src => $dst or die "Can't soft link '$src' to '$dst': $!\n";
}

sub dstPathMake {
	my ($src, $dst) = @_;

	if (-d $dst) {
		my $filename = basename $src;
		$dst = File::Spec->catfile($dst, $filename);
	}
	
	return $dst;
}

