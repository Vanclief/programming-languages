#! /usr/bin/perl
open (FILE, "manchas.txt") or die "File not found";

foreach $linea (<FILE>){
	while($linea =~ /\s(\w{3})\s/g){
		print "$1\n";
	}
}