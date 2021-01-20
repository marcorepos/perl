use warnings;
use strict;
use v5.016;

my @output=[];

@output=`ls -lrt`;

foreach my $line ( @output ){
  print $line;
}
