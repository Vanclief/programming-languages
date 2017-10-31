#!/usr/local/bin/perl

print "\nDame una lista de strings separados por coma.\n\n";
chomp($input = <STDIN>);

@strings = split(/,/, $input);

print "\n   Dame un numero para imprimir ese numero de string.\n(Asegurate que sea menor o igual a la cantidad de strings.\n\n";
chomp($n = <STDIN>);

$tam = scalar(@strings);
$random = rand($tam);

print "\nEl primer string es: $strings[0]";
print "\nEl ultimo string es: $strings[$tam - 1]";
print "\nEl string numero $n es: $strings[$n - 1]";
print "\nEl string random es: $strings[$random]\n";