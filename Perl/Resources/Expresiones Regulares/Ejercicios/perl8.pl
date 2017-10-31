#! /usr/bin/perl
open (FILE, "manchas.txt") or die "File not found";

foreach $linea (<FILE>){
	while($linea =~ /\s(\w{4,6})\s/g){
		print "$1\n";
	}
}