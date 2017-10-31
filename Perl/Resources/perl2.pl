#!/usr/local/bin/perl
print "Dame un numero\n";
chomp($numero = <STDIN>);

$es_primo = 1;
foreach $divisor (2..sqrt($numero)){
	if ($numero % $divisor == 0){
		$es_primo = 0;
	}
}

if($es_primo == 1){
	print "$numero es un numero primo.\n";
}else{
	print "$numero no es un numero primo.\n";
}