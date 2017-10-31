#!"C:\xampp\perl\bin\perl.exe"

use CGI ':standard';

@parametros = split(/,/, param("parametros"));

print header();
print start_html();
print "<CENTER><H1>PARAMETROS CON SU VALOR</H1></CENTER>";
for (my $i=0; $i < @parametros ; $i++ ){
	print "<h3>Parametro: $parametros[$i] >> Valor: $i</h3>";
}
print end_html();