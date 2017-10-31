#!/usr/local/bin/perl
# Write a program that reads a string and a number, and prints the string a number of times specified by the number in separate lines.

print "Enter a string\n";
$string = <STDIN>;
print "Enter a number\n";
$number = <STDIN>;

while($number > 0) {
  print "$string";
  $number--;
}
