#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Search current directory symlink path.
#

use strict;
use warnings;

foreach (<*>) {
#    if ( -l $_ ) {
#        my $where = readlink;
#        print "$_ -> $where\n";
#    }
	my $dst = readlink $_;
	print "$_ -> $dst\n" if defined $dst;
}

