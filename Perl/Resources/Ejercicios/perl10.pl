#!/usr/local/bin/perl

sub pares{
	print "\nTodos los numeros pares menores o iguales a n.\n\n";
	$aux0 = 0;
	for (1 .. $n+1){
		if ($aux0 % 2 == 0){
			print "$aux0 ";
		}
		$aux0 += 1;
	}
}

sub potencia{
	print "\nTodos los numeros potencia de 2 menores o iguales a n.\n\n";
	for $a (0 .. $n){
		$aux1 = 2 ** $a;
		if ($aux1 < $n){
			print "$aux1 ";
		}
	}
}

sub primo{
	use strict;
   	my @primes = (2); #arreglo de primos
    print "\nTodos los numeros primos menores o iguales a n.\n\n";
   	my $nuu = (shift || @_); #el numero que recibi (n)
    print "2 "; 
   	NEW_NUMBER: for my $num (2 .. $nuu){
        foreach (@primes) { next NEW_NUMBER if $num % $_ == 0 }
        print "$num ";
        push @primes, $num;
  	}
}

print "\nDame un numero n: ";
chomp($n = <STDIN>);
&pares;
print "\n";
&potencia;
print "\n";
&primo($n);
print "\n";
