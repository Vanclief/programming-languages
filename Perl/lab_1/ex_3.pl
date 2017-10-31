#!/usr/local/bin/perl
# Write a program that reads a list of names of cities and prints them:
# Ordered
# Inverse order
# The list should end with CTRL-D (unix) or CTRL-Z(win)

# Ending with CTRL-D is for Noobs. This ends when the line is empty

@cities_array;

print "Enter some cities, enter an empty line to finish\n";
while (<STDIN>) {
  /\S/ or last; # last line if empty
  push @cities_array, $_;
}

print "Ordered:\n";
print (sort {lc($a) cmp lc($b)} @cities_array);
print "\nInverse Order: \n";
print (sort {lc($b) cmp lc($a)} @cities_array);
