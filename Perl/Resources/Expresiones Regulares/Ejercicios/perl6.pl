#! /usr/bin/perl
open (FILE, "manchas.txt") or die "File not found";

$acum = 0;

foreach $linea (<FILE>){
	while($linea =~ /\b(M\w*a)\b/g){
		$acum++;
	}
}

print "\nExisten $acum palabras que empizan con 'M' y terminan con 'a'.\n";