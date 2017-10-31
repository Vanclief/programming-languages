#! /usr/bin/perl
open (FILE, "manchas.txt") or die "File not found";

$acum1=0;
$acum2=0;
$acum3=0;
$acum4=0;

foreach $linea (<FILE>){
	while ($linea =~ /(pero|sin|caballo|toboso)/gi) {
		if("$1" eq "pero"){
			$acum1++;
		}elsif ("$1" eq "sin"){
			$acum2++;
		}elsif ("$1" eq "caballo"){
			$acum3++;
		}elsif ("$1" eq "toboso"){
			$acum4++;
		}
	}
}
print "Hay $acum1 'pero', $acum2 'sin', $acum3 'caballo' y $acum4 'toboso'\n";