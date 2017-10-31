#!/usr/bin/perl

print "Dame una serie de numeros separados por coma: ";
$linea = <STDIN>;
chomp($linea);

@numeros = split(/,/, $linea);
@ordenados = sort{$b <=> $a} @numeros;

print "El menor es: $ordenados[@ordenados - 1]\n";
print "El mayor es: $ordenados[0]\n";

$media = 0;
$salida = "";
foreach $num (@ordenados) {
    $salida = $salida . $num . " ";
    $media += $num;
}
$media = $media / @ordenados;

print "Ordenados de mayor a menor: " . $salida . "\n";
print "Promedio es: $media\n";