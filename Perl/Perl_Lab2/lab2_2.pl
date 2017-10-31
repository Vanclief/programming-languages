#! usr/local/bin/perl
# Using the file log.txt which contains access information to labcq-master.qro.itesm.mx. Write a script in Perl that, using regular expressions, shows the IP address and the date of the computers used to access web pages located in the lab-cq server.

open($NAME, ">byname.csv");
open(CLASS, ">byclass.csv");

for $line(<>){
  my @array = split /\b,\b/, $line;
  print @array[2], " ", @array[3], " ", @array[4], " ", @array[5];
  print "\n";
}
