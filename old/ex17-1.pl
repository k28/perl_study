#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Search current directory symlink path.
#

use strict;
use warnings;
use utf8;
use 5.010;
use autodie;

my @text_list;

open my $fh, '<', "sample_text.txt";
while ( <$fh> ) {
	chomp;
	push @text_list, $_;
}

while (1) {
	print "Search words:";
	chomp(my $word = <STDIN>);
	last if $word =~ /\A\s*\Z/ ; #空行は終了にする

	my @matching_lines = ();
	eval {
		@matching_lines = grep { /$word/ } @text_list;
	};

	if ($@) {
		# error
		print "An error occurred ($@).\n";
	} else {
		my	$lineCount = @matching_lines;
		print "Match count:$lineCount\n", map "$_\n", @matching_lines;
		print "\n";
#        foreach ( @matching_lines ) {
#            print "$_\n";
#        }
	}
}
