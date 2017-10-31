#! /usr/bin/env perl
#
use strict;
use File::Find;
use File::Copy;

my @dirs = qw( . );
my @files_name = ();

my $filename = 'keywords.txt';
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";

while (my $row = <$fh>) {
  chomp $row;
  my $pattern = qr/$row/;

  find( \&wanted, @dirs );

  sub wanted {
    next if $File::Find::name eq '.' or $File::Find::name eq '..';

    if ($_ =~ /$pattern/) {
      push @files_name, $File::Find::name;
    } else {
      open my $file, '<', $File::Find::name
        or die "There was an error openning file:
      + $!\n";

      while(defined(my $line = <$file>))
      {
        if($line =~ /$pattern/) {
          push @files_name, $File::Find::name;
          last;
        }
      }
      close ($file);
    }
  }

  foreach my $file( @files_name)
  {
    print $file, "\n";
    copy("$file", "./sensitive_data");
  }
}
