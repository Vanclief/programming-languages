#!/usr/local/bin/perl

use List::Util qw(min max);

print "\nEscribe valores al azar. Al escribir 9999 el programa hace algo magico!\n\n";

$i=0;
$n = 0;
$aux = 0;
until ($n == 9999){
	$n = <STDIN>;
   	if($n != 9999){
    	$aux +=$n;
        $inputs[$i]=$n;
   	}
   	$i++;
}

$top = max @inputs;
$floor = min @inputs;

print "\nLa suma de todos los valores: $aux\n";
print "\nEl menor de todos los valores: $floor\n";
print "El mayor de todos los valores: $top\n";
print "Los numeros menores a 9999 son:\n\n";

foreach $numero (@inputs){
    if($numero < 9999){
    	chomp($numero);
    	print "$numero  ";
    }
}
print "\n";