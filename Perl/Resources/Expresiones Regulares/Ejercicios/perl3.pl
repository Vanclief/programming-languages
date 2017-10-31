#! /usr/bin/perl
open (FILE, "manchas.txt") or die "File not found";

$acum = 0;

foreach $linea (<FILE>){
	while($linea =~ /\./g){
		$acum++;
	}
}

print "\nHay $acum frases en el escrito.\n";