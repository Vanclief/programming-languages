#!"C:\xampp\perl\bin\perl.exe"

use CGI ':standard';

$nombre = param("nombre");
$dir;
$tel;
$entro=0;
open(ARCHIVO, "datos.txt");

print header();
print start_html();
print "<CENTER><H1>BUSCA BUSCA!</H1></CENTER>";

foreach $linea (<ARCHIVO>){
	while ($linea =~ /($nombre)(\w*)\,(\w*\s\w*)\,(\w*)/g ){
		$entro = 100;
		$nombre = $1;
		$dir = $3;
		$tel=$4;
		print "<h3> <table> <tr> <td>Nombre</td><td> $nombre </td></tr><tr><td>Direccion </td><td>$dir</td></tr><tr><td>Telefono</td><td>$tel</td></tr></table></h3>";
	}$entro--;
}

close(ARCHIVO);
print end_html();