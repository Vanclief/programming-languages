#!"C:\xampp\perl\bin\perl.exe"

use CGI ':standard';

$aux_pais = param("pais");
$capital;
open(ARCHIVO, "paises.txt");

print header();
print start_html();
print "<CENTER><H1>PAISES Y CAPITALES</H1></CENTER>";
foreach $linea (<ARCHIVO>){
	while ($linea =~ /($aux_pais)\s(\w*(\s(\w*))?)/ig){
			$capital= $2;
			print "<CENTER><h2>Pais: $aux_pais Capital: $capital</h2><CENTER>";
		}
}
close(ARCHIVO);
print end_html();
