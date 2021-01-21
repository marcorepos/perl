use warnings;
use strict;
use v5.016;

my @output=[];

@output=`ls -lrt`;

foreach my $line ( @output ){
  print $line;
}

sub test() {
  print "test";  ## fix bug
}

sub test2() {
  print "test2";
}

print 'v2 file';
print 'v3 file';
print 'v4 file';
print 'v5 file';
print 'v6 file';
print 'v7 file';
print 'v8 file';

print 'v9 file';

