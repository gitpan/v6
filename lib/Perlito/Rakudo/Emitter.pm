# Do not edit this file - Generated by Perlito 7.0
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

# use v6 
;
{
package CompUnit;
sub new { shift; bless { @_ }, "CompUnit" }
sub name { $_[0]->{name} };
sub attributes { $_[0]->{attributes} };
sub methods { $_[0]->{methods} };
sub body { $_[0]->{body} };
sub emit { my $self = $_[0]; '# class ' . $self->{name} . '; ' . '
' . Main::join(([ map { $_->emit() } @{( $self->{body} )} ]), '; ') . '
' }
}

;
{
package Val::Int;
sub new { shift; bless { @_ }, "Val::Int" }
sub int { $_[0]->{int} };
sub emit { my $self = $_[0]; $self->{int} }
}

;
{
package Val::Bit;
sub new { shift; bless { @_ }, "Val::Bit" }
sub bit { $_[0]->{bit} };
sub emit { my $self = $_[0]; $self->{bit} }
}

;
{
package Val::Num;
sub new { shift; bless { @_ }, "Val::Num" }
sub num { $_[0]->{num} };
sub emit { my $self = $_[0]; $self->{num} }
}

;
{
package Val::Buf;
sub new { shift; bless { @_ }, "Val::Buf" }
sub buf { $_[0]->{buf} };
sub emit { my $self = $_[0]; '\'' . $self->{buf} . '\'' }
}

;
{
package Val::Undef;
sub new { shift; bless { @_ }, "Val::Undef" }
sub emit { my $self = $_[0]; '(undef)' }
}

;
{
package Val::Object;
sub new { shift; bless { @_ }, "Val::Object" }
sub class { $_[0]->{class} };
sub fields { $_[0]->{fields} };
sub emit { my $self = $_[0]; 'bless(' . Main::perl($self->{fields}, ("" . ', ') . Main::perl($self->{class}, ("" . ')'))) }
}

;
{
package Lit::Array;
sub new { shift; bless { @_ }, "Lit::Array" }
sub array1 { $_[0]->{array1} };
sub emit { my $self = $_[0]; '[' . Main::join(([ map { $_->emit() } @{( $self->{array1} )} ]), ', ') . ']' }
}

;
{
package Lit::Hash;
sub new { shift; bless { @_ }, "Lit::Hash" }
sub hash1 { $_[0]->{hash1} };
sub emit { my $self = $_[0]; ((my  $fields = undef) = $self->{hash1}); ((my  $str = undef) = ''); for my $field ( @{($fields || []) || []} ) { ($str = $str . ($field->[0])->emit(("" . ' => ') . ($field->[1])->emit(("" . ',')))) }; '{ ' . $str . ' }' }
}

;
{
package Lit::Code;
sub new { shift; bless { @_ }, "Lit::Code" }
1
}

;
{
package Lit::Object;
sub new { shift; bless { @_ }, "Lit::Object" }
sub class { $_[0]->{class} };
sub fields { $_[0]->{fields} };
sub emit { my $self = $_[0]; ((my  $fields = undef) = $self->{fields}); ((my  $str = undef) = ''); for my $field ( @{($fields || []) || []} ) { ($str = $str . ($field->[0])->emit(("" . ' => ') . ($field->[1])->emit(("" . ',')))) }; $self->{class} . '.new( ' . $str . ' )' }
}

;
{
package Index;
sub new { shift; bless { @_ }, "Index" }
sub obj { $_[0]->{obj} };
sub index_exp { $_[0]->{index_exp} };
sub emit { my $self = $_[0]; $self->{obj}->emit(("" . '.[') . $self->{index_exp}->emit(("" . ']'))) }
}

;
{
package Lookup;
sub new { shift; bless { @_ }, "Lookup" }
sub obj { $_[0]->{obj} };
sub index_exp { $_[0]->{index_exp} };
sub emit { my $self = $_[0]; $self->{obj}->emit(("" . '.{') . $self->{index_exp}->emit(("" . '}'))) }
}

;
{
package Var;
sub new { shift; bless { @_ }, "Var" }
sub sigil { $_[0]->{sigil} };
sub twigil { $_[0]->{twigil} };
sub name { $_[0]->{name} };
sub emit { my $self = $_[0]; ((my  $table = undef) = do { (my  $Hash_a = {}); ($Hash_a->{'$'} = '$'); ($Hash_a->{'@'} = '$List_'); ($Hash_a->{'%'} = '$Hash_'); ($Hash_a->{'&'} = '$Code_'); $Hash_a }); (Main::bool((($self->{twigil} eq '.'))) ? ('$self.{' . $self->{name} . '}') : ((Main::bool((($self->{name} eq '/'))) ? ($table->{$self->{sigil}} . 'MATCH') : ($table->{$self->{sigil}} . $self->{name})))) }
}

;
{
package Bind;
sub new { shift; bless { @_ }, "Bind" }
sub parameters { $_[0]->{parameters} };
sub arguments { $_[0]->{arguments} };
sub emit { my $self = $_[0]; if (Main::bool(Main::isa($self->{parameters}, 'Lit::Array'))) { ((my  $a = undef) = $self->{parameters}->array()); ((my  $str = undef) = 'do { '); ((my  $i = undef) = 0); for my $var ( @{($a || []) || []} ) { ((my  $bind = undef) = Bind->new(('parameters' => $var), ('arguments' => Index->new(('obj' => $self->{arguments}), ('index_exp' => Val::Int->new(('int' => $i))))))); ($str = $str . ' ' . $bind->emit(("" . '; '))); ($i = ($i + 1)) }; return scalar ($str . $self->{parameters}->emit(("" . ' }'))) } ; if (Main::bool(Main::isa($self->{parameters}, 'Lit::Hash'))) { ((my  $a = undef) = $self->{parameters}->hash()); ((my  $b = undef) = $self->{arguments}->hash()); ((my  $str = undef) = 'do { '); ((my  $i = undef) = 0); (my  $arg = undef); for my $var ( @{($a || []) || []} ) { ($arg = Val::Undef->new()); for my $var2 ( @{($b || []) || []} ) { if (Main::bool((($var2->[0])->buf() eq ($var->[0])->buf()))) { ($arg = $var2->[1]) }  }; ((my  $bind = undef) = Bind->new(('parameters' => $var->[1]), ('arguments' => $arg))); ($str = $str . ' ' . $bind->emit(("" . '; '))); ($i = ($i + 1)) }; return scalar ($str . $self->{parameters}->emit(("" . ' }'))) } ; if (Main::bool(Main::isa($self->{parameters}, 'Lit::Object'))) { ((my  $class = undef) = $self->{parameters}->class()); ((my  $a = undef) = $self->{parameters}->fields()); ((my  $b = undef) = $self->{arguments}); ((my  $str = undef) = 'do { '); ((my  $i = undef) = 0); (my  $arg = undef); for my $var ( @{($a || []) || []} ) { ((my  $bind = undef) = Bind->new(('parameters' => $var->[1]), ('arguments' => Call->new(('invocant' => $b), ('method' => ($var->[0])->buf()), ('arguments' => do { (my  $List_a = []); (my  $List_v = []); $List_a }), ('hyper' => 0))))); ($str = $str . ' ' . $bind->emit(("" . '; '))); ($i = ($i + 1)) }; return scalar ($str . $self->{parameters}->emit(("" . ' }'))) } ; $self->{parameters}->emit(("" . ' = ') . $self->{arguments}->emit()) }
}

;
{
package Proto;
sub new { shift; bless { @_ }, "Proto" }
sub name { $_[0]->{name} };
sub emit { my $self = $_[0]; ("" . $self->{name}) }
}

;
{
package Call;
sub new { shift; bless { @_ }, "Call" }
sub invocant { $_[0]->{invocant} };
sub hyper { $_[0]->{hyper} };
sub method { $_[0]->{method} };
sub arguments { $_[0]->{arguments} };
sub emit { my $self = $_[0]; ((my  $invocant = undef) = $self->{invocant}->emit()); if (Main::bool(($invocant eq 'self'))) { ($invocant = '$self') } ; if (Main::bool(((((((($self->{method} eq 'perl')) || (($self->{method} eq 'yaml'))) || (($self->{method} eq 'say'))) || (($self->{method} eq 'join'))) || (($self->{method} eq 'chars'))) || (($self->{method} eq 'isa'))))) { if (Main::bool(($self->{hyper}))) { return scalar ('[ map { &Main::' . $self->{method} . '( $_, ' . ', ' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ', ') . ')' . ' } @( ' . $invocant . ' ) ]') } else { return scalar ('&Main::' . $self->{method} . '(' . $invocant . ', ' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ', ') . ')') } } ; ((my  $meth = undef) = $self->{method}); if (Main::bool(($meth eq 'postcircumfix:<( )>'))) { ($meth = '') } ; ((my  $call = undef) = '.' . $meth . '(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ', ') . ')'); if (Main::bool(($self->{hyper}))) { '[ map { $_' . $call . ' } @( ' . $invocant . ' ) ]' } else { $invocant . $call } }
}

;
{
package Apply;
sub new { shift; bless { @_ }, "Apply" }
sub code { $_[0]->{code} };
sub arguments { $_[0]->{arguments} };
sub emit { my $self = $_[0]; ((my  $code = undef) = $self->{code}); if (Main::bool(Main::isa($code, 'Str'))) {  } else { return scalar ('(' . $self->{code}->emit(("" . ').(') . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ', ') . ')')) }; if (Main::bool(($code eq 'self'))) { return scalar ('$self') } ; if (Main::bool(($code eq 'say'))) { return scalar ('say(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ', ') . ')') } ; if (Main::bool(($code eq 'print'))) { return scalar ('print(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ', ') . ')') } ; if (Main::bool(($code eq 'array'))) { return scalar ('@(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' ') . ')') } ; if (Main::bool(($code eq 'prefix:<~>'))) { return scalar ('("" . ' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' ') . ')') } ; if (Main::bool(($code eq 'prefix:<!>'))) { return scalar ('(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' ') . ' ?? 0 !! 1)') } ; if (Main::bool(($code eq 'prefix:<?>'))) { return scalar ('(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' ') . ' ?? 1 !! 0)') } ; if (Main::bool(($code eq 'prefix:<$>'))) { return scalar ('$(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' ') . ')') } ; if (Main::bool(($code eq 'prefix:<@>'))) { return scalar ('@(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' ') . ')') } ; if (Main::bool(($code eq 'prefix:<%>'))) { return scalar ('%(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' ') . ')') } ; if (Main::bool(($code eq 'infix:<~>'))) { return scalar ('(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' ~ ') . ')') } ; if (Main::bool(($code eq 'infix:<+>'))) { return scalar ('(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' + ') . ')') } ; if (Main::bool(($code eq 'infix:<->'))) { return scalar ('(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' - ') . ')') } ; if (Main::bool(($code eq 'infix:<&&>'))) { return scalar ('(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' && ') . ')') } ; if (Main::bool(($code eq 'infix:<||>'))) { return scalar ('(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' || ') . ')') } ; if (Main::bool(($code eq 'infix:<eq>'))) { return scalar ('(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' eq ') . ')') } ; if (Main::bool(($code eq 'infix:<ne>'))) { return scalar ('(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' ne ') . ')') } ; if (Main::bool(($code eq 'infix:<==>'))) { return scalar ('(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' == ') . ')') } ; if (Main::bool(($code eq 'infix:<!=>'))) { return scalar ('(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ' != ') . ')') } ; if (Main::bool(($code eq 'ternary:<?? !!>'))) { return scalar ('(' . ($self->{arguments}->[0])->emit(("" . ' ?? ') . ($self->{arguments}->[1])->emit(("" . ' !! ') . ($self->{arguments}->[2])->emit(("" . ')'))))) } ; '' . $self->{code} . '(' . Main::join(([ map { $_->emit() } @{( $self->{arguments} )} ]), ', ') . ')' }
}

;
{
package Return;
sub new { shift; bless { @_ }, "Return" }
sub result { $_[0]->{result} };
sub emit { my $self = $_[0]; return scalar ('return(' . $self->{result}->emit(("" . ')'))) }
}

;
{
package If;
sub new { shift; bless { @_ }, "If" }
sub cond { $_[0]->{cond} };
sub body { $_[0]->{body} };
sub otherwise { $_[0]->{otherwise} };
sub emit { my $self = $_[0]; 'do { if (' . $self->{cond}->emit(("" . ') { ') . Main::join(([ map { $_->emit() } @{( $self->{body} )} ]), ';') . ' } else { ' . Main::join(([ map { $_->emit() } @{( $self->{otherwise} )} ]), ';') . ' } }') }
}

;
{
package For;
sub new { shift; bless { @_ }, "For" }
sub cond { $_[0]->{cond} };
sub body { $_[0]->{body} };
sub topic { $_[0]->{topic} };
sub emit { my $self = $_[0]; ((my  $cond = undef) = $self->{cond}); if (Main::bool((Main::isa($cond, 'Var') && ($cond->sigil() eq '@')))) { ($cond = Apply->new(('code' => 'prefix:<@>'), ('arguments' => do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, $cond ); $List_a }))) } ; 'do { for my ' . $self->{topic}->emit(("" . ' ( ') . $cond->emit(("" . ' ) { ') . Main::join(([ map { $_->emit() } @{( $self->{body} )} ]), ';') . ' } }')) }
}

;
{
package Decl;
sub new { shift; bless { @_ }, "Decl" }
sub decl { $_[0]->{decl} };
sub type { $_[0]->{type} };
sub var { $_[0]->{var} };
sub emit { my $self = $_[0]; return scalar ($self->{decl} . ' ' . $self->{type} . ' ' . $self->{var}->emit()) }
}

;
{
package Sig;
sub new { shift; bless { @_ }, "Sig" }
sub invocant { $_[0]->{invocant} };
sub positional { $_[0]->{positional} };
sub named { $_[0]->{named} };
sub emit { my $self = $_[0]; ' print \'Signature - TODO\'; die \'Signature - TODO\'; ' }
}

;
{
package Method;
sub new { shift; bless { @_ }, "Method" }
sub name { $_[0]->{name} };
sub sig { $_[0]->{sig} };
sub block { $_[0]->{block} };
sub emit { my $self = $_[0]; ((my  $sig = undef) = $self->{sig}); ((my  $invocant = undef) = $sig->invocant()); ((my  $pos = undef) = $sig->positional()); ((my  $str = undef) = ''); ((my  $pos = undef) = $sig->positional()); for my $field ( @{($pos || []) || []} ) { ($str = $str . '' . $field->emit(("" . '?, '))) }; 'method ' . $self->{name} . '(' . $invocant->emit(("" . ': ') . $str . ') { ' . Main::join(([ map { $_->emit() } @{( $self->{block} )} ]), '; ') . ' }') }
}

;
{
package Sub;
sub new { shift; bless { @_ }, "Sub" }
sub name { $_[0]->{name} };
sub sig { $_[0]->{sig} };
sub block { $_[0]->{block} };
sub emit { my $self = $_[0]; ((my  $sig = undef) = $self->{sig}); ((my  $pos = undef) = $sig->positional()); (my  $str = undef); ((my  $pos = undef) = $sig->positional()); for my $field ( @{($pos || []) || []} ) { ($str = $str . '' . $field->emit(("" . '?, '))) }; if (Main::bool(($self->{name} eq ''))) { return scalar ('(sub (' . $str . ') ' . ' { ' . Main::join(([ map { $_->emit() } @{( $self->{block} )} ]), '; ') . ' })') } ; 'sub ' . $self->{name} . '(' . $str . ') ' . ' { ' . Main::join(([ map { $_->emit() } @{( $self->{block} )} ]), '; ') . ' }' }
}

;
{
package Do;
sub new { shift; bless { @_ }, "Do" }
sub block { $_[0]->{block} };
sub emit { my $self = $_[0]; 'do { ' . Main::join(([ map { $_->emit() } @{( $self->{block} )} ]), '; ') . ' }' }
}

;
{
package Use;
sub new { shift; bless { @_ }, "Use" }
sub mod { $_[0]->{mod} };
sub emit { my $self = $_[0]; 'use ' . $self->{mod} }
}


}

1;
