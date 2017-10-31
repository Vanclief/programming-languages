#!/usr/local/bin/perl

print "\nA continuacion se muestran numeros del 1 al 32 con cuadrados y cubos.\n";
print "\n    n       n^2        n^3\n\n";

for $n (0..32){
	$x = $n;
	$y = $n ** 2;
	$z = $n ** 3;
	printf "%5g %8g %10g\n", $x, $y, $z;
}