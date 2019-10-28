#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

print "word:";
chomp($word = <STDIN>);

print "count:";
chomp($count = <STDIN>);

for ($i = 0; $i < $count; $i++) {
	print "$word\n";
}


