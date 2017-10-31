#! /usr/bin/perl
# Franco Valencia

@instructions_line;
@underscore_word;
@lines;
$lines_count = 0;
$count = -925;

open (FILE, "illiad.txt") or die "File not found";

for $line(<FILE>){

  $lines_count++;

  push(@lines, $line);

  if ($line =~ /Instruction/){
    push(@instructions_line, "$line\n");
  }


  @words = split(/[ ,]+/, $line);

  foreach $w(@words) {
    if($w =~ /(_)(.*)(_)/i){
      if ( $2 =~ /quiz/ ) {
        # This is not elegant, but works so screw it
      } else {
        push(@underscore_word, "$2 ");
      }
    }
  }

  if($line =~ /the/i){
    $count++;
  }
}

print "Step 1\n";
print @instructions_line;

print "Step 2\n";
print @underscore_word;

@sorted_words = sort @underscore_word;

print "\n";
print "Step 3\n";
print @sorted_words;

print "\n";
print "Step 4\n";
print "Answer should be in line: $count \n";
print "Total lines: $lines_count \n";
print @lines[$count];
