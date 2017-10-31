#! /usr/bin/env perl
# Franco Valencia A01206630
use strict;
use warnings;
use File::Find;
use File::Copy;

my @file_list;
my $dir = ".";  # top level dir to search

find(
  sub { push @file_list, $File::Find::name unless -d; },
  $dir
);

foreach my $file( @file_list) {
  if (-M $file < .002083333) {
    print $file, "\n";
    copy("$file", "./my_traces");
    unlink $file;
  }
}
