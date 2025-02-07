#!/usr/bin/perl

use strict;
use warnings;

my $filename = shift @ARGV;

open(my $fh, '<', $filename) or die "Could not open file '$filename' $!";

while (my $line = <$fh>) {
    chomp $line;
    my @fields = split /\s+/, $line;
    print "$fields[0] $fields[1]\n";
}

close $fh;