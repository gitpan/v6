# Do not edit this file - Generated by MiniPerl6 6.0
use v5;
use utf8;
use strict;
use MiniPerl6::Perl5::Runtime;
our $MATCH = MiniPerl6::Match->new();
{
package GLOBAL;
sub new { shift; bless { @_ }, "GLOBAL" }

# use v6 
;
{
package Main;
sub new { shift; bless { @_ }, "Main" }
sub to_lisp_identifier { my $ident = $_[0]; return('sv-' . $ident) }
}


}

1;
