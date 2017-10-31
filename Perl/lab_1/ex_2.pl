#!/usr/local/bin/perl
# Write a program that asks for a number and a list of strings and then prints:
# A) The first string
# B) The last string
# C) The string indicated by the number
# D) A random string from the list. Use  srand; to set the random at the beginning of the program and rand(@varArray)  to choose an element from the list.

@string_array;

print "Enter a list of strings\n";

while (<STDIN>) {
  /\S/ or last; # last line if empty
  push @string_array, $_;
}

$array_length = @string_array - 1;
$random_number = rand($array_length);

print "Enter a number between 0 and $array_length \n";
$number = <STDIN>;

while($number < 0 || $number > $array_length) {
  print "Enter a number between 0 and $array_length \n";
  $number = <STDIN>;
}

print "First: $string_array[0]\n";
print "Last $string_array[-1]\n";
print "Indicated by Number $string_array[$number]\n";
print "Random: $string_array[$random_number]\n";
