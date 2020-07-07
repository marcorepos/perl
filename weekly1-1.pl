#!/usr/bin/env perl
use v5.016;
use warnings;

# Weeky 1-1
#
# Write a script to replace the character ‘e’ with ‘E’ in the string ‘Perl Weekly Challenge’. Also print the number of times the character ‘e’ is found in the string.

my $getarg = $ARGV[0];

exit if  scalar(@ARGV)  != 1;

my $num = ($getarg =~ s|e|E|g);

say $getarg;
say $num;
