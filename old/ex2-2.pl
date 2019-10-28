#! /usr/bin/perl
## Copyright (C) 2013 by K.Hatano

$pi = 3.141592654;

print "Please input radius:";

chomp($radius = <STDIN>);
$circumfarence = $radius * 2 * $pi;

print "Circumfarence is $circumfarence\n";



