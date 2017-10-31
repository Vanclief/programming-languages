#!/usr/bin/perl

@operador = ();
@numeros = ();

$entrada = <STDIN>;
chomp($entrada);

for $c (split(//, $entrada)) {
    if ($c eq ')') {
        $op = pop(@operador);
        while ($op ne '(') {
            $der = pop(@numeros);
            $izq = pop(@numeros);
            push(@numeros, ($izq . " " . $der . " " . $op));
            $op = pop(@operador);
        }
    } elsif ($c gt '0' && $c lt '9') {
        push(@numeros, $c);
    } else {
        push(@operador, $c);
    }
}

print "resultado: " . pop(@numeros);