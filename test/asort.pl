#!/usr/bin/perl

# asort test

=pod
Design and implement a library/package to alternate sort the given array.
Examples:

Input  -->  Output
1, 7, 2, 3, 4, 5, 6  -->  7, 1, 6, 2, 5, 3, 4
2, -99, 7, 3, 5, 6  -->  7, -99, 6, 2, 5, 3
8, 8, 3, 1, -7, -7  -->  8, -7, 8, -7, 3, 1
5, 5, 5, 5, 5, 5, 5  -->  5, 5, 5, 5, 5, 5, 5
=cut

use  strict ;
use  warnings ;
while ( my $input = <DATA> ) {
  chomp $input;

  # first plain sort
  my @ary = sort { $a<=>$b } ( split /,\s*/, $input );
  my @output = () ;

  # second fetch and distribute
  while ( scalar @ary ) {
    push @output, pop @ary ;
    push @output, shift @ary if scalar @ary ;
  }

  my $output = join ', ', @output ;

  printf( "%s --> %s\n", $input, $output ) ;
}

1;

__DATA__
Casi di esempio
1, 7, 2, 3, 4, 5, 6
2, -99, 7, 3, 5, 6
8, 8, 3, 1, -7, -7
5, 5, 5, 5, 5, 5, 5

1, 2, 5, 3, 3, 2