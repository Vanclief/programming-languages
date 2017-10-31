#!/usr/local/bin/perl

use Math::Trig;

print "\nDame el radio del circulo: ";

chomp($radio = <STDIN>);

print "Circunference = ", 2 * pi * $radio, "\n";