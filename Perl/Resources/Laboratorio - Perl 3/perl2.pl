#!"C:\xampp\perl\bin\perl.exe"

use CGI ':standard';

$celsius = sprintf("%.3f", param("centigrados"));
$farenheit = sprintf("%.3f", ($celsius*(9.0/5.0)+32.0));
$kelvin = sprintf("%.3f",$celsius +273.15);

print header();
print start_html();
print "<CENTER><H1>Conversiones</H1></CENTER>";
print "<h3>Farenheit: $farenheit </h3><br><h3>Kelvin: $kelvin </h3>";
print end_html();