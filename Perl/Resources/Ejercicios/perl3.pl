#!/usr/local/bin/perl

print "\nDame un numero: ";
chomp($a = <STDIN>);

print "\nDame un numero: ";
chomp($b = <STDIN>);

print "\nLa suma es: ", $a + $b, "\n";
print "La resta es: ", $a - $b, "\n";
print "Su division es: ", $a / $b, "\n";
print "Su residuo es: ", $a % $b, "\n";
print "La exponenciacion es: ", $a ** $b, "\n";