#!/usr/bin/perl


#Usage
# ch-2.pl -to_base35 <base-10-number>
# ch-2.pl -from_base35 <base-35-number>

use v5.016;

my @base = ( (0..9) ,('A'..'Y'));

exit if @ARGV != 2;

say to_base35($ARGV[1])   if $ARGV[0] eq '-to_base35';
say from_base35($ARGV[1]) if $ARGV[0] eq '-from_base35';

sub to_base35 {
    my ($input) = @_ ;
    my $char = join '', @base;
    my @digit = split '' , $input;
    my $value=0;
    my $pos=0;
    while ( my $i = pop @digit){
     $value += index( $char, $i ) * ( @base ** $pos);
     $pos++;
    }
    return $value;
}

sub from_base35 {
    my @value;
    my ($input) = @_;
    do {
        push @value, $base [ $input % @base ];
        $input = int ($input / @base) ;
        } while ( $input > 0 );
    reverse @value;
}
