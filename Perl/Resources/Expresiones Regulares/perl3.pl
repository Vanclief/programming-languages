#! /usr/bin/perl
open (FILE, "log.txt") or die "File not found\n";

$horas = 0;
$minutos = 0;

foreach $line (<FILE>){
	if ($line =~ /\((\d{2}):(\d{2})\)$/){
		$horas += $1;
		$minutos += $2;
	}
}

while ($minutos > 59){
	$horas++;
	$minutos -= 60;
}

print "$horas horas y $minutos minutos.\n";