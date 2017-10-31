#!"C:\xampp\perl\bin\perl.exe"

use CGI ':standard';

$nombre = param("nombre");
$direcc = param("direccion");
$telefono = param("telefono");

open(ARCHIVO, ">>datos.txt");
print ARCHIVO $linea, "$nombre,$direcc,$telefono\n";
close(ARCHIVO);

print header();
print start_html();

print "<CENTER><h1>Registro agregado:</h1><br> Nombre:$nombre<br>Direccion:$direcc<br>Telefono:$telefono</CENTER>";

print end_html();