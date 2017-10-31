#!/usr/local/bin/perl
# Write a program that ask for 3 numbers and writes:
# The lowest
# The highest
# “equal” if they’re all the same

my @numbers;

print "Enter one number per line, an empty line ends the input\n";

while (<STDIN>){
  last if /^$/;
  push @numbers, $_;
}

my ($min, $max);

for (@numbers) {
  $min = $_ if !$min || $_ < $min;
  $max = $_ if !$max || $_ > $max
};

if ("@numbers" =~ /^([-0-9]+)\s+(?:\1\s+)*$/) {
  print "Equal";
} else {
  print "Lowest: $min\n";
  print "Biggest: $max\n";
}

