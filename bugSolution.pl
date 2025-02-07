#!/usr/bin/perl

use strict;
use warnings;

my $filename = shift @ARGV;

open(my $fh, '<', $filename) or die "Could not open file '$filename' $!";

while (my $line = <$fh>) {
    chomp $line;
    my @fields = split /\s+/, $line;
    if (@fields >= 2) {
        print "$fields[0] $fields[1]\n";
    } else {
        warn "Skipping line with insufficient fields: $line\n";
    }
}

close $fh;