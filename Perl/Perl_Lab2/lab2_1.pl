#! usr/local/bin/perl
# Using as an entry the golden beetle from Edgar Allan Poe, write a set of scripts that do the following using regular expressions.

# Count the number of times each letter e appears in the text.
$e_total = 0;
# Show every word with more than 10 characters.
@over_ten_characters;
# Count the number of sentences the begin with’;’.
$sentence_semicolon = 0;
# Show the quoted  “” segments in the story.
@quoted_segments;
# Show the words that start with ‘g’ and end with ‘s’.
@start_g_end_s;

open (FILE, "goldbug.txt");

for $line(<FILE>){

  @words = split(" ", $line);
  @sentences = split(";", $line);

  foreach $w(@words) {
    # Count the number of times each letter e appears in the text.
    if($w =~ /[e]/gi){
      $e_total++;
    }

    # Show every word with more than 10 characters.
    if($w =~ /[A-Z]{11,}/i){
      push(@over_ten_characters, "$w ");
    }

    # Show the words that start with ‘g’ and end with ‘s’.
    if($w =~ /(^g)(.*)(s$)/i){
      push(@start_g_end_s, "$w ");
    }
  }

  # Show the quoted  “” segments in the story.
  if($line =~ /^"([^"]*)"$/) {
    push(@quoted_segments, "$line \n");
  }

}

# Count the number of sentences the begin with’;’.
foreach $sentence(@sentences){
  print ("$sentence \n");
  if($sentence =~ /^;/){
    $sentence_semicolon++;
  }
}

print("1. Count the number of times each letter e appears in the text.\n");
print($e_total);
print("\n");
print("2. 2. Show every word with more than 10 characters.\n");
print(@over_ten_characters);
print("\n");
print("3. Count the number of sentences the begin with’;’\n");
print($sentence_semicolon);
print("\n");
print("4. Show the quoted  “” segments in the story.\n");
print(@quoted_segments);
print("\n");
print("5. Show the words that start with ‘g’ and end with ‘s’\n");
print(@start_g_end_s);

