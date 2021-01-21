use warnings;
use strict;
use v5.016;

my @output=[];

@output=`ls -lrt`;

foreach my $line ( @output ){
  print $line;
}

print 'v2 file';
print 'v3 file';
print 'v4 file';
print 'v5 file';
print 'v6 file';
<<<<<<< HEAD
print 'v7 file';
=======
>>>>>>> 4d22d9c6e209acfc8c1a0e26d791ddb3237925a2
