#!/usr/local/bin/perl

print "\nDame el primer numero: ";
chomp($a = <STDIN>);

print "\nDame el segundo numero: ";
chomp($b = <STDIN>);

print "\nDame el tercer numero: ";
chomp($c = <STDIN>);

if ($a <= $b && $a <= $c){
	$menor = $a;
}elsif ($b <= $a && $b <= $c){
	$menor = $b;
}else{
	$menor = $c;
}

print "\nEl menor de los 3 es: $menor\n";

if ($a >= $b && $a >= $c){
	$mayor = $a;
}elsif ($b >= $a && $b >= $c){
	$mayor = $b;
}else{
	$mayor = $c;
}

print "\nEl mayor de los 3 es: $mayor\n";

if ($a == $b && $a == $c){
	print "\nLos 3 valores son iguales.\n";
}else{
	print "\nLos valores son diferentes.\n";
}

if($a > 0 || $b > 0 || $c > 0){
	print "\nAl menos uno mayor que 0.\n";
}else{
	print "\nNo hay ni un valor mayor que 0.\n";
}