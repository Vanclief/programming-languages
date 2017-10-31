#!/usr/local/bin/perl
# Write a program that receives a list of numbers which includes the number 42 (for correctness). And then print the following:
# The sum of all the numbers in the list. 
# The lowest one (don’t; use the sort function). 
# The highest one (don’t; use the sort function). 
# Every number below the 42.

my @numbers;
my @lower_numbers;
my $sum = 42;

push @numbers, 42;
print "Enter one number per line, an empty line ends the input\n";

while (<STDIN>){
  last if /^$/;
  $sum += $_;
  push @numbers, $_;
  if ($_ < 42) {
    push @lower_numbers, $_;
  }
}

my ($min, $max);

for (@numbers) {
  $min = $_ if !$min || $_ < $min;
  $max = $_ if !$max || $_ > $max
};

print "Sum: $sum\n";
print "Lowest: $min\n";
print "Biggest: $max\n";
print "Lower than 42: \n";
print @lower_numbers;


