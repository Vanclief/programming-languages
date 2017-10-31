#! usr/local/bin/perl


open($NAME, ">byname.csv");
open(CLASS, ">byclass.csv");

for $line(<>){
  chomp $line;
  print "There is a line";

  # @field = $line.split(",");
  # print CLASS "$field[2],$field[1]\n";
  # $hash{$field[3]} = "$field[6], $field[5], $field[4]";
  # $number = $line.length();
}

# print $number;
# print $NAME "Name, Age, Sex, Survived \n";
# delete $hash{"Name"};

# for $key(sort keys(%hash)) {
  # print $NAME $key.",".$hash{$key}."\n";
# }
