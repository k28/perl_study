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

if (-d $dst) {
	my $filename = basename $src;
	$dst = File::Spec->catfile($dst, $filename);
}

link $src => $dst or die "Can't link '$src' to '$dst': $!\n";

