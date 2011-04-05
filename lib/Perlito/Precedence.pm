# Do not edit this file - Generated by Perlito 6.0
use v5;
use utf8;
use strict;
use warnings;
no warnings ('redefine', 'once', 'void', 'uninitialized', 'misc', 'recursion');
use Perlito::Perl5::Runtime;
use Perlito::Perl5::Prelude;
our $MATCH = Perlito::Match->new();
{
package GLOBAL;
sub new { shift; bless { @_ }, "GLOBAL" }
{
package Perlito::Precedence;
sub new { shift; bless { @_ }, "Perlito::Precedence" }
sub get_token { $_[0]->{get_token} };
sub reduce { $_[0]->{reduce} };
sub end_token { $_[0]->{end_token} };
((my  $Operator = undef) = do { (my  $Hash_a = {}); $Hash_a });
((my  $Precedence = undef) = do { (my  $Hash_a = {}); $Hash_a });
((my  $Assoc = undef) = do { (my  $Hash_a = {}); $Hash_a });
((my  $Allow_space_before = undef) = do { (my  $Hash_a = {}); $Hash_a });
sub is_assoc_type { my $assoc_type = $_[0]; my $op_name = $_[1]; return scalar ($Assoc->{$assoc_type}->{$op_name}) };
sub is_fixity_type { my $fixity_type = $_[0]; my $op_name = $_[1]; return scalar ($Operator->{$fixity_type}->{$op_name}) };
sub is_term { my $token = $_[0]; ((($token->[0] eq 'term')) || (($token->[0] eq 'postfix_or_term'))) };
sub is_ident_middle { my $c = $_[0]; (((((($c ge 'a')) && (($c le 'z')))) || (((($c ge '0')) && (($c le '9'))))) || (($c eq '_'))) };
(my  $Op1 = undef);
(my  $Op2 = undef);
(my  $Op3 = undef);
(my  $End_token = undef);
sub op_parse { my $self = $_[0]; my $str = $_[1]; my $pos = $_[2]; ((my  $from = undef) = $pos); for my $tok ( @{(($End_token) || []) || []} ) { ((my  $l = undef) = Main::chars($tok, )); ((my  $s = undef) = substr($str, $pos, $l)); if (Main::bool(($s eq $tok))) { ((my  $c1 = undef) = substr($str, (($pos + $l) - 1), 1)); ((my  $c2 = undef) = substr($str, ($pos + $l), 1)); if (Main::bool((is_ident_middle($c1) && ((is_ident_middle($c2) || ($c2 eq '(')))))) {  } else { return scalar (Perlito::Match->new(('str' => $str), ('from' => $from), ('to' => ($pos + 2)), ('bool' => 1), ('capture' => do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, 'end' ); push( @{$List_a}, $s ); $List_a }))) } }  }; ((my  $c01 = undef) = substr($str, $pos, 1)); ((my  $c02 = undef) = substr($str, $pos, 2)); ((my  $hyper_left = undef) = 0); ((my  $hyper_right = undef) = 0); if (Main::bool(((($c01 eq '«')) || (($c01 eq '»'))))) { ($hyper_left = $c01); ($pos = ($pos + 1)); ($c02 = substr($str, $pos, 2)) } else { if (Main::bool(((($c02 eq '<<')) || (($c02 eq '>>'))))) { ($hyper_left = $c02); ($pos = ($pos + 2)); ($c02 = substr($str, $pos, 2)) }  }; ((my  $op3 = undef) = substr($str, $pos, 3)); if (Main::bool(exists($Op3->{$op3}))) { ((my  $c1 = undef) = substr($str, ($pos + 2), 1)); ((my  $c2 = undef) = substr($str, ($pos + 3), 1)); if (Main::bool((is_ident_middle($c1) && ((is_ident_middle($c2) || ($c2 eq '(')))))) {  } else { ($pos = ($pos + 3)); ((my  $c01 = undef) = substr($str, $pos, 2)); ((my  $c02 = undef) = substr($str, $pos, 3)); if (Main::bool(((($c01 eq '«')) || (($c01 eq '»'))))) { ($hyper_right = $c01); ($pos = ($pos + 1)) } else { if (Main::bool(((($c02 eq '<<')) || (($c02 eq '>>'))))) { ($hyper_right = $c02); ($pos = ($pos + 2)) }  }; return scalar (Perlito::Match->new(('str' => $str), ('from' => $from), ('to' => $pos), ('bool' => 1), ('capture' => do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, 'op' ); push( @{$List_a}, $op3 ); push( @{$List_a}, do { (my  $Hash_a = {}); ($Hash_a->{'hyper_left'} = $hyper_left); ($Hash_a->{'hyper_right'} = $hyper_right); $Hash_a } ); $List_a }))) } } ; ((my  $op2 = undef) = $c02); if (Main::bool(exists($Op2->{$op2}))) { ((my  $c1 = undef) = substr($str, ($pos + 1), 1)); ((my  $c2 = undef) = substr($str, ($pos + 2), 1)); if (Main::bool((is_ident_middle($c1) && ((is_ident_middle($c2) || ($c2 eq '(')))))) {  } else { ($pos = ($pos + 2)); ((my  $c01 = undef) = substr($str, $pos, 1)); ((my  $c02 = undef) = substr($str, $pos, 2)); if (Main::bool(((($c01 eq '«')) || (($c01 eq '»'))))) { ($hyper_right = $c01); ($pos = ($pos + 1)) } else { if (Main::bool(((($c02 eq '<<')) || (($c02 eq '>>'))))) { ($hyper_right = $c02); ($pos = ($pos + 2)) }  }; return scalar (Perlito::Match->new(('str' => $str), ('from' => $from), ('to' => $pos), ('bool' => 1), ('capture' => do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, 'op' ); push( @{$List_a}, $op2 ); push( @{$List_a}, do { (my  $Hash_a = {}); ($Hash_a->{'hyper_left'} = $hyper_left); ($Hash_a->{'hyper_right'} = $hyper_right); $Hash_a } ); $List_a }))) } } ; ((my  $op1 = undef) = substr($str, $pos, 1)); if (Main::bool(exists($Op1->{$op1}))) { ((my  $c2 = undef) = substr($str, ($pos + 1), 1)); if (Main::bool((is_ident_middle($op1) && ((is_ident_middle($c2) || ($c2 eq '(')))))) {  } else { ($pos = ($pos + 1)); ((my  $c01 = undef) = substr($str, $pos, 1)); ((my  $c02 = undef) = substr($str, $pos, 2)); if (Main::bool(((($c01 eq '«')) || (($c01 eq '»'))))) { ($hyper_right = $c01); ($pos = ($pos + 1)) } else { if (Main::bool(((($c02 eq '<<')) || (($c02 eq '>>'))))) { ($hyper_right = $c02); ($pos = ($pos + 2)) }  }; return scalar (Perlito::Match->new(('str' => $str), ('from' => $from), ('to' => $pos), ('bool' => 1), ('capture' => do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, 'op' ); push( @{$List_a}, $op1 ); push( @{$List_a}, do { (my  $Hash_a = {}); ($Hash_a->{'hyper_left'} = $hyper_left); ($Hash_a->{'hyper_right'} = $hyper_right); $Hash_a } ); $List_a }))) } } ; return scalar (Perlito::Match->new(('bool' => 0))) };
sub add_op { my $fixity = $_[0]; my $name = $_[1]; my $precedence = $_[2]; my $param = $_[3]; if (Main::bool(!Main::bool((defined($param))))) { ($param = do { (my  $Hash_a = {}); $Hash_a }) } ; ((my  $assoc = undef) = ($param->{'assoc'} || 'left')); ($Operator->{$fixity}->{$name} = 1); ($Precedence->{$name} = $precedence); ($Assoc->{$assoc}->{$name} = 1); ($Allow_space_before->{$fixity}->{$name} = (Main::bool($param->{'no_space_before'}) ? 0 : 1)); if (Main::bool(((Main::chars($name, )) == 1))) { ($Op1->{$name} = 1) } else { if (Main::bool(((Main::chars($name, )) == 2))) { ($Op2->{$name} = 1) } else { if (Main::bool(((Main::chars($name, )) == 3))) { ($Op3->{$name} = 1) }  } } };
((my  $prec = undef) = 100);
add_op('postfix', '.( )', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'no_space_before'} = 1); $Hash_a });
add_op('postfix', '.[ ]', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'no_space_before'} = 1); $Hash_a });
add_op('postfix', '.{ }', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'no_space_before'} = 1); $Hash_a });
add_op('postfix', '( )', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'no_space_before'} = 1); $Hash_a });
add_op('postfix', '[ ]', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'no_space_before'} = 1); $Hash_a });
add_op('postfix', 'funcall', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'no_space_before'} = 1); $Hash_a });
add_op('postfix', 'funcall_no_params', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'no_space_before'} = 1); $Hash_a });
add_op('postfix', 'methcall', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'no_space_before'} = 1); $Hash_a });
add_op('postfix', 'methcall_no_params', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'no_space_before'} = 1); $Hash_a });
add_op('postfix', 'block', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'no_space_before'} = 1); $Hash_a });
add_op('postfix', 'hash', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'no_space_before'} = 1); $Hash_a });
($prec = ($prec - 1));
add_op('prefix', '++', $prec);
add_op('prefix', '--', $prec);
add_op('postfix', '++', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'no_space_before'} = 1); $Hash_a });
add_op('postfix', '--', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'no_space_before'} = 1); $Hash_a });
($prec = ($prec - 1));
add_op('infix', '**', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'right'); $Hash_a });
($prec = ($prec - 1));
add_op('prefix', '+', $prec);
add_op('prefix', '-', $prec);
add_op('prefix', '$', $prec);
add_op('prefix', '@', $prec);
add_op('prefix', '%', $prec);
add_op('prefix', '!', $prec);
add_op('prefix', '?', $prec);
($prec = ($prec - 1));
add_op('infix', '*', $prec);
add_op('infix', '/', $prec);
($prec = ($prec - 1));
add_op('infix', '+', $prec);
add_op('infix', '-', $prec);
($prec = ($prec - 1));
add_op('infix', '~', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'list'); $Hash_a });
add_op('prefix', '~', $prec);
($prec = ($prec - 1));
add_op('infix', '&', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'list'); $Hash_a });
add_op('prefix', '&', $prec);
($prec = ($prec - 1));
add_op('infix', '|', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'list'); $Hash_a });
add_op('prefix', '|', $prec);
($prec = ($prec - 1));
add_op('infix', '<=>', $prec);
add_op('infix', 'leg', $prec);
add_op('infix', 'cmp', $prec);
add_op('infix', 'does', $prec);
add_op('infix', 'but', $prec);
add_op('infix', '..', $prec);
add_op('infix', '^..', $prec);
add_op('infix', '..^', $prec);
add_op('infix', '^..^', $prec);
($prec = ($prec - 1));
add_op('infix', '===', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'chain'); $Hash_a });
add_op('infix', 'ne', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'chain'); $Hash_a });
add_op('infix', 'eq', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'chain'); $Hash_a });
add_op('infix', 'lt', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'chain'); $Hash_a });
add_op('infix', 'le', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'chain'); $Hash_a });
add_op('infix', 'gt', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'chain'); $Hash_a });
add_op('infix', 'ge', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'chain'); $Hash_a });
add_op('infix', '<=', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'chain'); $Hash_a });
add_op('infix', '>=', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'chain'); $Hash_a });
add_op('infix', '==', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'chain'); $Hash_a });
add_op('infix', '!=', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'chain'); $Hash_a });
add_op('infix', '<', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'chain'); $Hash_a });
add_op('infix', '>', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'chain'); $Hash_a });
add_op('infix', '~~', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'chain'); $Hash_a });
($prec = ($prec - 1));
add_op('infix', '&&', $prec);
($prec = ($prec - 1));
add_op('infix', '||', $prec);
add_op('infix', '//', $prec);
($prec = ($prec - 1));
add_op('ternary', '?? !!', $prec);
($prec = ($prec - 1));
add_op('infix', '=', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'right'); $Hash_a });
add_op('infix', ':=', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'right'); $Hash_a });
($prec = ($prec - 1));
add_op('prefix', 'not', $prec);
($prec = ($prec - 1));
add_op('infix', '=>', $prec);
($prec = ($prec - 1));
add_op('list', ',', $prec, do { (my  $Hash_a = {}); ($Hash_a->{'assoc'} = 'list'); $Hash_a });
($prec = ($prec - 1));
add_op('infix', 'and', $prec);
($prec = ($prec - 1));
add_op('infix', 'or', $prec);
($prec = ($prec - 1));
add_op('infix', '*start*', $prec);
sub precedence_parse { my $self = $_[0]; ((my  $get_token = undef) = $self->get_token()); ((my  $reduce = undef) = $self->reduce()); ((my  $last_end_token = undef) = $End_token); ($End_token = $self->end_token()); ((my  $op_stack = undef) = do { (my  $List_a = []); (my  $List_v = []); $List_a }); ((my  $num_stack = undef) = do { (my  $List_a = []); (my  $List_v = []); $List_a }); ((my  $last = undef) = do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, 'op' ); push( @{$List_a}, '*start*' ); $List_a }); ((my  $last_has_space = undef) = 0); ((my  $token = undef) = $get_token->()); if (Main::bool((($token->[0]) eq 'space'))) { ($token = $get_token->()) } ; for ( ; Main::bool(((defined($token)) && (($token->[0] ne 'end'))));  ) { if (Main::bool(((($token->[1] eq ',')) && (((($last->[1] eq '*start*')) || (($last->[1] eq ','))))))) { push( @{$num_stack}, do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, 'term' ); push( @{$List_a}, undef ); $List_a } ) } ; if (Main::bool(($Operator->{'prefix'}->{$token->[1]} && (((($last->[1] eq '*start*')) || !Main::bool((is_term($last)))))))) { ($token->[0] = 'prefix'); unshift( @{$op_stack}, $token ) } else { if (Main::bool((($Operator->{'postfix'}->{$token->[1]} && is_term($last)) && (($Allow_space_before->{'postfix'}->{$token->[1]} || !Main::bool(($last_has_space))))))) { ((my  $pr = undef) = $Precedence->{$token->[1]}); for ( ; Main::bool((scalar( @{$op_stack} ) && (($pr <= $Precedence->{($op_stack->[0])->[1]}))));  ) { $reduce->($op_stack, $num_stack) }; if (Main::bool((($token->[0]) ne 'postfix_or_term'))) { ($token->[0] = 'postfix') } ; unshift( @{$op_stack}, $token ) } else { if (Main::bool((((($token->[1] eq 'block')) && is_term($last)) && $last_has_space))) { for ( ; Main::bool(scalar( @{$op_stack} ));  ) { $reduce->($op_stack, $num_stack) }; push( @{$num_stack}, $token ); ($End_token = $last_end_token); return scalar ($num_stack) } else { if (Main::bool(is_term($token))) { if (Main::bool(is_term($last))) { Main::say('#      last:  ', Main::perl($last, )); Main::say('#      token: ', Main::perl($token, )); Main::say('#      space: ', $last_has_space); die('Value tokens must be separated by an operator') } ; ($token->[0] = 'term'); push( @{$num_stack}, $token ) } else { if (Main::bool($Precedence->{$token->[1]})) { ((my  $pr = undef) = $Precedence->{$token->[1]}); if (Main::bool($Assoc->{'right'}->{$token->[1]})) { for ( ; Main::bool((scalar( @{$op_stack} ) && (($pr < $Precedence->{($op_stack->[0])->[1]}))));  ) { $reduce->($op_stack, $num_stack) } } else { for ( ; Main::bool((scalar( @{$op_stack} ) && (($pr <= $Precedence->{($op_stack->[0])->[1]}))));  ) { $reduce->($op_stack, $num_stack) } }; if (Main::bool($Operator->{'ternary'}->{$token->[1]})) { ($token->[0] = 'ternary') } else { ($token->[0] = 'infix') }; unshift( @{$op_stack}, $token ) } else { die('Unknown token: \'', $token->[1], '\'') } } } } }; ($last = $token); ($token = $get_token->()); if (Main::bool(($token->[0] eq 'space'))) { ($token = $get_token->()); ($last_has_space = 1) } else { ($last_has_space = 0) } }; if (Main::bool((defined($token) && (($token->[0] ne 'end'))))) { die('Unexpected end token: ', Main::perl($token, )) } ; for ( ; Main::bool(scalar( @{$op_stack} ));  ) { $reduce->($op_stack, $num_stack) }; ($End_token = $last_end_token); return scalar ($num_stack) }
}


}

1;
