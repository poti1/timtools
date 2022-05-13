#!perl
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
   use_ok( 'TimTools' ) || print "Bail out!\n";
}

diag( "Testing TimTools $TimTools::VERSION, Perl $], $^X" );
