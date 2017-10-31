#!/usr/local/bin/perl

print "\nDame una lista de ciudades separados por coma para poder ordenarlos.\n\n";
chomp($input = <STDIN>);

@ciudades = split(/,/, $input);
@ordenados = sort{$a cmp $b} @ciudades;
print "\nCiudades ordenadas alfabeticamente:\n\n";

for $ciudad (@ordenados){
	print "$ciudad\n";
}

@volteados = reverse(@ordenados);
print "\nEn secuencia invertida:\n\n";

for $volteado (@volteados){
	print "$volteado\n";
}