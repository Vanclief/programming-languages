#!"C:\xampp\perl\bin\perl.exe"

use CGI ':standard';

print header();
print start_html();
print "<CENTER><H1>TABLAS DE MULTIPLICAR</H1></CENTER>";
print "<CENTER><table>";

for ($i=1; $i <= 9; $i++){
	print "<tr>"; print"<td><strong>TABLA DEL $i</strong></td>";
	for (my $j=1; $j < 10; $j++){
		$n = $i * $j;
			print "<td> $n </td>";
	}print"</tr>";
}

print "</table><CENTER>";
print "</br>";
print end_html();