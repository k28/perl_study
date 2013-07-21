#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

@lines = `perldoc -u -f atan2`;
foreach (@lines) {
	s/w<([^>]+)>/\U$1/g;
	print;
}

