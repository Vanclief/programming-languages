#! /usr/bin/perl
open (FILE, "manchas.txt") or die "File not found";

foreach $linea (<FILE>){
	while($linea =~ /\sQui\w*\s(\w*)\s/g){
		print "$1\n";
	}
}