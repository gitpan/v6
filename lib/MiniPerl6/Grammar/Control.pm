# Do not edit this file - Generated by MiniPerl6 6.0
use v5;
use utf8;
use strict; no warnings;
use MiniPerl6::Perl5::Runtime;
our $MATCH = MiniPerl6::Match->new();
{
package GLOBAL;
sub new { shift; bless { @_ }, "GLOBAL" }

# use v6 
;
{
package MiniPerl6::Grammar;
sub new { shift; bless { @_ }, "MiniPerl6::Grammar" }
sub unless { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos), ('bool' => 1))); (($MATCH)->{bool} = ((do { do { (my  $pos1 = $MATCH->to()); (do { do { (((((((((((Main::bool((('u' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0)) && ((Main::bool((('n' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('l' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('e' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('s' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('s' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && (do { do { (my  $m2 = $grammar->ws($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); 1 } else { 0 } } })) && (do { do { (my  $m2 = $grammar->exp($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); ($MATCH->{'exp'} = $m2); 1 } else { 0 } } })) && (((do { do { (my  $body = (${$MATCH->{'exp'}})->{'end_block'}); if (Main::bool(((defined($body)) ? 0 : 1))) { die('Missing code block in \'unless\'') } ; ($MATCH->{capture} = (If->new(('cond' => (${$MATCH->{'exp'}})->{'exp'}), ('body' => Lit::Block->new(('stmts' => []))), ('otherwise' => $body)))) } }) || 1)))) } }) } }))); $MATCH };
sub if { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos), ('bool' => 1))); (($MATCH)->{bool} = ((do { do { (my  $pos1 = $MATCH->to()); (do { do { (((((((Main::bool((('i' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0)) && ((Main::bool((('f' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && (do { do { (my  $m2 = $grammar->ws($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); 1 } else { 0 } } })) && (do { do { (my  $m2 = $grammar->exp($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); ($MATCH->{'exp'} = $m2); 1 } else { 0 } } })) && (do { do { (my  $pos1 = $MATCH->to()); (((do { do { ((((((((do { do { (my  $m2 = $grammar->opt_ws($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); 1 } else { 0 } } }) && ((Main::bool((('e' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('l' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('s' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('e' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && (do { do { (my  $m2 = $grammar->exp2($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); ($MATCH->{'exp2'} = $m2); 1 } else { 0 } } })) && (((do { do { (my  $body = (${$MATCH->{'exp'}})->{'end_block'}); (my  $otherwise = (${$MATCH->{'exp2'}})->{'exp'}); if (Main::bool(((defined($body)) ? 0 : 1))) { die('Missing code block in \'if\'') } ; if (Main::bool(((defined($otherwise)) ? 0 : 1))) { die('Missing code block in \'else\'') } ; if (Main::bool(Main::isa($otherwise, 'Lit::Hash'))) { ($otherwise = Lit::Block->new(('stmts' => $otherwise->hash1()))) } ; ($MATCH->{capture} = (If->new(('cond' => (${$MATCH->{'exp'}})->{'exp'}), ('body' => $body), ('otherwise' => $otherwise)))) } }) || 1)))) } }) || (do { do { (($MATCH)->{to} = $pos1); (((((((do { do { (my  $m2 = $grammar->opt_ws($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); 1 } else { 0 } } }) && ((Main::bool((('e' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('l' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('s' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && (do { do { (my  $m2 = $grammar->if($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); ($MATCH->{'if'} = $m2); 1 } else { 0 } } })) && (((do { do { (my  $body = (${$MATCH->{'exp'}})->{'end_block'}); if (Main::bool(((defined($body)) ? 0 : 1))) { die('Missing code block in \'if\'') } ; ($MATCH->{capture} = (If->new(('cond' => (${$MATCH->{'exp'}})->{'exp'}), ('body' => $body), ('otherwise' => Lit::Block->new(('stmts' => [${$MATCH->{'if'}}])))))) } }) || 1)))) } })) || (do { do { (($MATCH)->{to} = $pos1); ((((do { do { (my  $body = (${$MATCH->{'exp'}})->{'end_block'}); if (Main::bool(((defined($body)) ? 0 : 1))) { die('Missing code block in \'if\'') } ; ($MATCH->{capture} = (If->new(('cond' => (${$MATCH->{'exp'}})->{'exp'}), ('body' => $body), ('otherwise' => [])))) } }) || 1))) } })) } }))) } }) } }))); $MATCH };
sub when { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos), ('bool' => 1))); (($MATCH)->{bool} = ((do { do { (my  $pos1 = $MATCH->to()); (do { do { (((((((((Main::bool((('w' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0)) && ((Main::bool((('h' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('e' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('n' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && (do { do { (my  $m2 = $grammar->ws($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); 1 } else { 0 } } })) && (do { do { (my  $m2 = $grammar->exp($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); ($MATCH->{'exp'} = $m2); 1 } else { 0 } } })) && (((do { do { (my  $body = (${$MATCH->{'exp'}})->{'end_block'}); if (Main::bool(((defined($body)) ? 0 : 1))) { die('Missing code block in \'when\'') } ; ($MATCH->{capture} = (When->new(('parameters' => (${$MATCH->{'exp'}})->{'exp'}), ('body' => $body)))) } }) || 1)))) } }) } }))); $MATCH };
sub for { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos), ('bool' => 1))); (($MATCH)->{bool} = ((do { do { (my  $pos1 = $MATCH->to()); (do { do { ((((((((Main::bool((('f' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0)) && ((Main::bool((('o' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('r' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && (do { do { (my  $m2 = $grammar->ws($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); 1 } else { 0 } } })) && (do { do { (my  $m2 = $grammar->exp($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); ($MATCH->{'exp'} = $m2); 1 } else { 0 } } })) && (((do { do { (my  $body = (${$MATCH->{'exp'}})->{'end_block'}); if (Main::bool(((defined($body)) ? 0 : 1))) { die('Missing code block in \'when\'') } ; ($MATCH->{capture} = (For->new(('cond' => (${$MATCH->{'exp'}})->{'exp'}), ('topic' => undef), ('body' => $body)))) } }) || 1)))) } }) } }))); $MATCH };
sub while { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos), ('bool' => 1))); (($MATCH)->{bool} = ((do { do { (my  $pos1 = $MATCH->to()); (do { do { ((((((((((Main::bool((('w' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0)) && ((Main::bool((('h' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('i' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('l' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('e' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && (do { do { (my  $m2 = $grammar->ws($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); 1 } else { 0 } } })) && (do { do { (my  $m2 = $grammar->exp($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); ($MATCH->{'exp'} = $m2); 1 } else { 0 } } })) && (((do { do { (my  $body = (${$MATCH->{'exp'}})->{'end_block'}); if (Main::bool(((defined($body)) ? 0 : 1))) { die('Missing code block in \'while\'') } ; ($MATCH->{capture} = (While->new(('cond' => (${$MATCH->{'exp'}})->{'exp'}), ('body' => $body)))) } }) || 1)))) } }) } }))); $MATCH };
sub loop { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos), ('bool' => 1))); (($MATCH)->{bool} = ((do { do { (my  $pos1 = $MATCH->to()); (do { do { (((((((((Main::bool((('l' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0)) && ((Main::bool((('o' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('o' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && ((Main::bool((('p' eq substr($str, $MATCH->to(), 1)))) ? ((1 + ((($MATCH)->{to} = (1 + $MATCH->to()))))) : 0))) && (do { do { (my  $m2 = $grammar->ws($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); 1 } else { 0 } } })) && (do { do { (my  $m2 = $grammar->exp($str, $MATCH->to())); if (Main::bool($m2)) { (($MATCH)->{to} = $m2->to()); ($MATCH->{'exp'} = $m2); 1 } else { 0 } } })) && (((do { do { (my  $body = (${$MATCH->{'exp'}})->{'end_block'}); if (Main::bool(((defined($body)) ? 0 : 1))) { ($body = (${$MATCH->{'exp'}})->{'exp'}); if (Main::bool(Main::isa($body, 'Lit::Block'))) { ($MATCH->{capture} = (While->new(('cond' => Val::Bit->new(('bit' => 1))), ('body' => $body)))) } else { die('Missing code block in \'loop\'') } } else { die('\'loop\' with parameters is not implemented') } } }) || 1)))) } }) } }))); $MATCH }
}


}

1;
