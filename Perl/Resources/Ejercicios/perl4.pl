#!/usr/local/bin/perl

print "Dame un string:\n\n";
chomp($string = <STDIN>);

print "\nDame el numero de veces que se imprimira: ";
chomp($n = <STDIN>);
print "\n";

for (1..$n){
	print "$string\n";
}