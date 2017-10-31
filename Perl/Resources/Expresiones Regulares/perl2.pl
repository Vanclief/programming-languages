#! /usr/bin/perl

open (FILE, "log.txt") or die "File not found";
$acum = 0;
foreach $line (<FILE>){
	if ($line =~ /10\.(\d{2})\.(\d{2})\.(\d{2})/){
		chomp($line);
		$acum++;
		print "10.$1.$2.$3\n";
	}
}