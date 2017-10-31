#! usr/local/bin/perl

my @all = glob "*";
my @perl = glob "*.pl";

# for $arg(@all) {
  # print "one file is $arg \n"
# }


# for $arg(@perl) {
  # print "one perlhfile is $arg \n"
# }

my $dir = "./Perl_Lab2";

opendir DH, $dir or die "\n doesn't exist\n";

for $arg(readdir DH) {
  print "the file $arg is in the dir $dir\n";
}

closedir DH;

link "some.txt", "truelink.txt";

open FILE, ">some.txt";
print FILE, "this is the new stuff";
close FILE;

open FILE, ">>some_truth."
print FILE, "this is the newer stuff";
close FILE;
