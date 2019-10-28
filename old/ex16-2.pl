#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano
#
#	Search current directory symlink path.
#

use strict;
use warnings;

open STDOUT, '>', 'ls.put' or die "Cannot connect STDOUT";
open STDERR, '>', 'ls.err' or die "Cannot connect STDERR";

chdir "/Users/kazuya";
exec 'ls', '-l';

