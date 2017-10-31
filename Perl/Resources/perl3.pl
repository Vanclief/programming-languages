#!/usr/local/bin/perl

print "Dame a: ";
$a = <STDIN>;
chomp($a);
print "Dame b: ";
$b = <STDIN>;
chomp($b);

$t1 = $a;
$t2 = $b;
while ($t2 != 0) {
    $aux = $t2;
    $t2 = $t1 % $t2;
    $t1 = $aux;

print "El MCD de $a y $b es $t1\n";