#DUDAS:

#QW/
#Y PATH INICIAL

#!/usr/local/bin/perl

#ARRAYS -> List of scalars

#@months = ("July", "August", "September");
#@listaUno=(0,2,4);
#@listaDos=(@listaUno,1,3,5); # @listaDos = (0,2,4,1,3,5)
#print $months[0]."\n";
#$months[2] = "Smarch";  # We just renamed September!
#print $months[2];

#ARREGLOS ASOSIACTIVOS (HASH)
#%days_in_summer = ( "July" => 31, "August" => 31, "September" => 30 );
#@llaves = keys(%days_in_summer);
#print @llaves;
#$size = keys(%days_in_summer);
#print "\n" . $size;
#print $days_in_summer{"September"};
#delete $days_in_summer{"August"}; -> Borra la relación August, 31.
#$days_in_summer{"February"} = 29; 
#Size of array = $#array

#push(@array, 0);      # @array now has (5, 6, 0)
#@listaUno=(0,2,4,6); 
#$x = pop(@listaUno); # $x=6 y @listaUno=(0,2,4
#shift(@listaUno,6,8); # @listaUno=(6,8,0,2,4)
#unshift( @nombreArreglo): regresa y elimina el primer valor de la lista
#reverse lo invierte, sort lo ordena alfabéticamente, chop quita el último.

#@array = qw# dino fred barney #;
#$a = shift(@array);      # $a gets "dino", @array now has ("fred", "barney")
#$b = shift @array;       # $b gets "fred", @array now has ("barney")
#shift @array;            # @array is now empty
#$email = "fred\@bedrock.edu"; # Correct

#CAST A SCALAR
#@rocks = qw( talc quartz jade obsidian );
#print "How many rocks do you have?\n";
#print "I have ", @rocks, " rocks!\n";        # WRONG, prints names of rocks
#print "I have ", scalar @rocks, " rocks!\n"; # Correct, gives a number

#FOR y FOREACH
#for $i (1, 2, 3, 4, 5) {
    #print "$i\n";
#}

#foreach $i (("Hugo","Paco","Luis")) {
	#print "$i\n";
#}

#@rocks = qw/ bedrock slate lava /;
#foreach $rock (@rocks) {
  #$rock = "\t$rock";              # put a tab in front of each element of @rocks
  #$rock .= "\n";                  # put a newline on the end of each
#}
#print "The rocks are:\n", @rocks;

#Ejercicio 1

#use Math::Trig;

#$radius = 12.5;
#print "Circunference = ", 2 * pi * $radius;

#Ejercicio 2

#use Math::Trig;

#chomp($radius = <STDIN>);
#print "Circunference = ", 2 * pi * $radius;

#Ejercicio 3

#use Math::Trig;

#chomp($radius = <STDIN>);

#if ($radius < 0){
	#print "Circunference = 0";
#}else{
	#print "Circunference = ", 2 * pi * $radius;
#}

#Ejercicio 4

#print "Dame un numero: ";
#chomp($var1 = <STDIN>);
#print "\nDame otro numero: ";
#chomp($var2 = <STDIN>);
#print "\n";
#print "La multiplicacion de tus numeros es: " . $var1 * $var2 . "\n";