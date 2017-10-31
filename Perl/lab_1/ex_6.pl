#!/usr/bin/perl
use strict;
use warnings;
use Email::Send;
use Email::Simple::Creator;

my $filename = 'email.txt';
my @email_content;

open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Jesus, I could not open the file '$filename' $!";

while (my $row = <$fh>) {
  chomp $row;
  push @email_content, $row;
}

my $mailer = Email::Send->new( {
    mailer => 'SMTP::TLS',
    mailer_args => [
      Host => 'smtp.gmail.com',
      Port => 587,
      User => 'programming.languages.lab@gmail.com',
      Password => 'mimamame',
      Hello => 'Student',
    ]
  } );

my $email = Email::Simple->create(
  header => [
    From    => 'programming.languages.lab@gmail.com',
    To      => 'franco.avalencia@mail.com',
    Subject => 'Test',
  ],
  body => 'It works!.',
);

eval { $mailer->send($email) };
die "Error sending email: $@" if $@;
