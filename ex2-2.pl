#!/usr/bin/perl
use 5.010;
#
# 半径をプロンプトから取得して円周を表示する
#

$PI = 3.141592654;

print("input r > ");
chomp($r = <STDIN>);

$circum = $r * $PI * 2;
say "circumference is $circum";

