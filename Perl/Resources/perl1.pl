#!/usr/local/bin/perl
print "Dame los grados celsius\n";
chomp($celsius = <STDIN>);
$farenheit = ( 9.0 / 5.0 ) + $celsius + 32;
print "El resultado es: $farenheit\n";