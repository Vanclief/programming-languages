#! /usr/bin/perl
open (FILE, "log.txt") or die "File not found";

$acum = 0;
foreach $linea (<FILE>){
	if ($linea =~ /shutdown/ || $linea =~ /reboot/){
		$acum++;
	}
}
print "Se ha hecho $acum veces shutdown o reboot en el servidor.\n";