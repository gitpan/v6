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
sub emit_parrot { my $self = $_[0]; ((my  $a = undef) = $self->{body}); (my  $item = undef); ((my  $s = undef) = '.namespace [ ' . '"' . $self->{name} . '"' . ' ] ' . '
' . '.sub _ :main :anon' . '
' . '.end' . '
' . '
' . '.sub ' . '"' . '_class_vars_' . '"' . ' :anon' . '
'); for my $item ( @{($a || []) || []} ) { if (Main::bool(((Main::isa($item, 'Decl')) && (($item->decl() ne 'has'))))) { ($s = $s . $item->emit_parrot()) }  }; ($s = $s . '.end' . '
' . '
'); for my $item ( @{($a || []) || []} ) { if (Main::bool((Main::isa($item, 'Sub') || Main::isa($item, 'Method')))) { ($s = $s . $item->emit_parrot()) }  }; for my $item ( @{($a || []) || []} ) { if (Main::bool(((Main::isa($item, 'Decl')) && (($item->decl() eq 'has'))))) { ((my  $name = undef) = ($item->var())->name()); ($s = $s . '.sub ' . '"' . $name . '"' . ' :method' . '
' . '  .param pmc val      :optional' . '
' . '  .param int has_val  :opt_flag' . '
' . '  unless has_val goto ifelse' . '
' . '  setattribute self, ' . '"' . $name . '"' . ', val' . '
' . '  goto ifend' . '
' . 'ifelse:' . '
' . '  val = getattribute self, ' . '"' . $name . '"' . '
' . 'ifend:' . '
' . '  .return(val)' . '
' . '.end' . '
' . '
') }  }; ($s = $s . '.sub _ :anon :load :init :outer(' . '"' . '_class_vars_' . '"' . ')' . '
' . '  .local pmc self' . '
' . '  newclass self, ' . '"' . $self->{name} . '"' . '
'); for my $item ( @{($a || []) || []} ) { if (Main::bool(((Main::isa($item, 'Decl')) && (($item->decl() eq 'has'))))) { ($s = $s . $item->emit_parrot()) } ; if (Main::bool(((Main::isa($item, 'Decl') || Main::isa($item, 'Sub')) || Main::isa($item, 'Method')))) {  } else { ($s = $s . $item->emit_parrot()) } }; ($s = $s . '.end' . '
' . '
'); return scalar ($s) }
}

;
{
package Val::Int;
sub new { shift; bless { @_ }, "Val::Int" }
sub int { $_[0]->{int} };
sub emit_parrot { my $self = $_[0]; '  $P0 = new .Integer' . '
' . '  $P0 = ' . $self->{int} . '
' }
}

;
{
package Val::Bit;
sub new { shift; bless { @_ }, "Val::Bit" }
sub bit { $_[0]->{bit} };
sub emit_parrot { my $self = $_[0]; '  $P0 = new "Integer"' . '
' . '  $P0 = ' . $self->{bit} . '
' }
}

;
{
package Val::Num;
sub new { shift; bless { @_ }, "Val::Num" }
sub num { $_[0]->{num} };
sub emit_parrot { my $self = $_[0]; '  $P0 = new "Float"' . '
' . '  $P0 = ' . $self->{num} . '
' }
}

;
{
package Val::Buf;
sub new { shift; bless { @_ }, "Val::Buf" }
sub buf { $_[0]->{buf} };
sub emit_parrot { my $self = $_[0]; '  $P0 = new "String"' . '
' . '  $P0 = ' . '"' . $self->{buf} . '"' . '
' }
}

;
{
package Val::Undef;
sub new { shift; bless { @_ }, "Val::Undef" }
sub emit_parrot { my $self = $_[0]; '  $P0 = new .Undef' . '
' }
}

;
{
package Val::Object;
sub new { shift; bless { @_ }, "Val::Object" }
sub class { $_[0]->{class} };
sub fields { $_[0]->{fields} };
sub emit_parrot { my $self = $_[0]; die('Val::Object - not used yet') }
}

;
{
package Lit::Array;
sub new { shift; bless { @_ }, "Lit::Array" }
sub array1 { $_[0]->{array1} };
sub emit_parrot { my $self = $_[0]; ((my  $a = undef) = $self->{array1}); (my  $item = undef); ((my  $s = undef) = '  save $P1' . '
' . '  $P1 = new .ResizablePMCArray' . '
'); for my $item ( @{($a || []) || []} ) { ($s = $s . $item->emit_parrot()); ($s = $s . '  push $P1, $P0' . '
') }; ((my  $s = undef) = $s . '  $P0 = $P1' . '
' . '  restore $P1' . '
'); return scalar ($s) }
}

;
{
package Lit::Hash;
sub new { shift; bless { @_ }, "Lit::Hash" }
sub hash1 { $_[0]->{hash1} };
sub emit_parrot { my $self = $_[0]; ((my  $a = undef) = $self->{hash1}); (my  $item = undef); ((my  $s = undef) = '  save $P1' . '
' . '  save $P2' . '
' . '  $P1 = new .Hash' . '
'); for my $item ( @{($a || []) || []} ) { ($s = $s . ($item->[0])->emit_parrot()); ($s = $s . '  $P2 = $P0' . '
'); ($s = $s . ($item->[1])->emit_parrot()); ($s = $s . '  set $P1[$P2], $P0' . '
') }; ((my  $s = undef) = $s . '  $P0 = $P1' . '
' . '  restore $P2' . '
' . '  restore $P1' . '
'); return scalar ($s) }
}

;
{
package Lit::Code;
sub new { shift; bless { @_ }, "Lit::Code" }
sub emit_parrot { my $self = $_[0]; die('Lit::Code - not used yet') }
}

;
{
package Lit::Object;
sub new { shift; bless { @_ }, "Lit::Object" }
sub class { $_[0]->{class} };
sub fields { $_[0]->{fields} };
sub emit_parrot { my $self = $_[0]; ((my  $fields = undef) = $self->{fields}); ((my  $str = undef) = ''); ($str = '  save $P1' . '
' . '  save $S2' . '
' . '  $P1 = new ' . '"' . $self->{class} . '"' . '
'); for my $field ( @{($fields || []) || []} ) { ($str = $str . ($field->[0])->emit_parrot(("" . '  $S2 = $P0') . '
' . ($field->[1])->emit_parrot(("" . '  setattribute $P1, $S2, $P0') . '
'))) }; ($str = $str . '  $P0 = $P1' . '
' . '  restore $S2' . '
' . '  restore $P1' . '
'); $str }
}

;
{
package Index;
sub new { shift; bless { @_ }, "Index" }
sub obj { $_[0]->{obj} };
sub index_exp { $_[0]->{index_exp} };
sub emit_parrot { my $self = $_[0]; ((my  $s = undef) = '  save $P1' . '
'); ($s = $s . $self->{obj}->emit_parrot()); ($s = $s . '  $P1 = $P0' . '
'); ($s = $s . $self->{index_exp}->emit_parrot()); ($s = $s . '  $P0 = $P1[$P0]' . '
'); ((my  $s = undef) = $s . '  restore $P1' . '
'); return scalar ($s) }
}

;
{
package Lookup;
sub new { shift; bless { @_ }, "Lookup" }
sub obj { $_[0]->{obj} };
sub index_exp { $_[0]->{index_exp} };
sub emit_parrot { my $self = $_[0]; ((my  $s = undef) = '  save $P1' . '
'); ($s = $s . $self->{obj}->emit_parrot()); ($s = $s . '  $P1 = $P0' . '
'); ($s = $s . $self->{index_exp}->emit_parrot()); ($s = $s . '  $P0 = $P1[$P0]' . '
'); ((my  $s = undef) = $s . '  restore $P1' . '
'); return scalar ($s) }
}

;
{
package Var;
sub new { shift; bless { @_ }, "Var" }
sub sigil { $_[0]->{sigil} };
sub twigil { $_[0]->{twigil} };
sub name { $_[0]->{name} };
sub emit_parrot { my $self = $_[0]; (Main::bool((($self->{twigil} eq '.'))) ? ('  $P0 = getattribute self, \'' . $self->{name} . '\'' . '
') : ('  $P0 = ' . $self->full_name(("" . ' ') . '
'))) };
sub full_name { my $self = $_[0]; ((my  $table = undef) = do { (my  $Hash_a = {}); ($Hash_a->{'$'} = 'scalar_'); ($Hash_a->{'@'} = 'list_'); ($Hash_a->{'%'} = 'hash_'); ($Hash_a->{'&'} = 'code_'); $Hash_a }); (Main::bool((($self->{twigil} eq '.'))) ? ($self->{name}) : ((Main::bool((($self->{name} eq '/'))) ? ($table->{$self->{sigil}} . 'MATCH') : ($table->{$self->{sigil}} . $self->{name})))) }
}

;
{
package Bind;
sub new { shift; bless { @_ }, "Bind" }
sub parameters { $_[0]->{parameters} };
sub arguments { $_[0]->{arguments} };
sub emit_parrot { my $self = $_[0]; if (Main::bool(Main::isa($self->{parameters}, 'Lit::Array'))) { ((my  $a = undef) = $self->{parameters}->array1()); ((my  $b = undef) = $self->{arguments}->array1()); ((my  $str = undef) = ''); ((my  $i = undef) = 0); for my $var ( @{($a || []) || []} ) { ((my  $bind = undef) = Bind->new(('parameters' => $var), ('arguments' => ($b->[$i])))); ($str = $str . $bind->emit_parrot()); ($i = ($i + 1)) }; return scalar ($str . $self->{parameters}->emit_parrot()) } ; if (Main::bool(Main::isa($self->{parameters}, 'Lit::Hash'))) { ((my  $a = undef) = $self->{parameters}->hash()); ((my  $b = undef) = $self->{arguments}->hash()); ((my  $str = undef) = ''); ((my  $i = undef) = 0); (my  $arg = undef); for my $var ( @{($a || []) || []} ) { ($arg = Val::Undef->new()); for my $var2 ( @{($b || []) || []} ) { if (Main::bool((($var2->[0])->buf() eq ($var->[0])->buf()))) { ($arg = $var2->[1]) }  }; ((my  $bind = undef) = Bind->new(('parameters' => $var->[1]), ('arguments' => $arg))); ($str = $str . $bind->emit_parrot()); ($i = ($i + 1)) }; return scalar ($str . $self->{parameters}->emit_parrot()) } ; if (Main::bool(Main::isa($self->{parameters}, 'Lit::Object'))) { ((my  $class = undef) = $self->{parameters}->class()); ((my  $a = undef) = $self->{parameters}->fields()); ((my  $b = undef) = $self->{arguments}); ((my  $str = undef) = ''); for my $var ( @{($a || []) || []} ) { ((my  $bind = undef) = Bind->new(('parameters' => $var->[1]), ('arguments' => Call->new(('invocant' => $b), ('method' => ($var->[0])->buf()), ('arguments' => do { (my  $List_a = []); (my  $List_v = []); $List_a }), ('hyper' => 0))))); ($str = $str . $bind->emit_parrot()) }; return scalar ($str . $self->{parameters}->emit_parrot()) } ; if (Main::bool(Main::isa($self->{parameters}, 'Var'))) { return scalar ($self->{arguments}->emit_parrot(("" . '  ') . $self->{parameters}->full_name(("" . ' = $P0') . '
'))) } ; if (Main::bool(Main::isa($self->{parameters}, 'Decl'))) { return scalar ($self->{arguments}->emit_parrot(("" . '  .local pmc ') . (($self->{parameters})->var())->full_name(("" . '
') . '  ' . (($self->{parameters})->var())->full_name(("" . ' = $P0') . '
' . '  .lex \'' . (($self->{parameters})->var())->full_name(("" . '\', $P0') . '
'))))) } ; if (Main::bool(Main::isa($self->{parameters}, 'Lookup'))) { ((my  $param = undef) = $self->{parameters}); ((my  $obj = undef) = $param->obj()); ((my  $index = undef) = $param->index_exp()); return scalar ($self->{arguments}->emit_parrot(("" . '  save $P2') . '
' . '  $P2 = $P0' . '
' . '  save $P1' . '
' . $obj->emit_parrot(("" . '  $P1 = $P0') . '
' . $index->emit_parrot(("" . '  $P1[$P0] = $P2') . '
' . '  restore $P1' . '
' . '  restore $P2' . '
')))) } ; if (Main::bool(Main::isa($self->{parameters}, 'Index'))) { ((my  $param = undef) = $self->{parameters}); ((my  $obj = undef) = $param->obj()); ((my  $index = undef) = $param->index_exp()); return scalar ($self->{arguments}->emit_parrot(("" . '  save $P2') . '
' . '  $P2 = $P0' . '
' . '  save $P1' . '
' . $obj->emit_parrot(("" . '  $P1 = $P0') . '
' . $index->emit_parrot(("" . '  $P1[$P0] = $P2') . '
' . '  restore $P1' . '
' . '  restore $P2' . '
')))) } ; die('Not implemented binding: ' . $self->{parameters} . '
' . $self->{parameters}->emit_parrot()) }
}

;
{
package Proto;
sub new { shift; bless { @_ }, "Proto" }
sub name { $_[0]->{name} };
sub emit_parrot { my $self = $_[0]; '  $P0 = ' . $self->{name} . '
' }
}

;
{
package Call;
sub new { shift; bless { @_ }, "Call" }
sub invocant { $_[0]->{invocant} };
sub hyper { $_[0]->{hyper} };
sub method { $_[0]->{method} };
sub arguments { $_[0]->{arguments} };
sub emit_parrot { my $self = $_[0]; if (Main::bool(((((($self->{method} eq 'perl')) || (($self->{method} eq 'yaml'))) || (($self->{method} eq 'say'))) || (($self->{method} eq 'join'))))) { if (Main::bool(($self->{hyper}))) { return scalar ('[ map { Main::' . $self->{method} . '( $_, ' . ', ' . Main::join(([ map { $_->emit_parrot() } @{( $self->{arguments} )} ]), '') . ')' . ' } @{ ' . $self->{invocant}->emit_parrot(("" . ' } ]'))) } else { return scalar ('Main::' . $self->{method} . '(' . $self->{invocant}->emit_parrot(("" . ', ') . Main::join(([ map { $_->emit_parrot() } @{( $self->{arguments} )} ]), '') . ')')) } } ; ((my  $meth = undef) = $self->{method}); if (Main::bool(($meth eq 'postcircumfix:<( )>'))) { ($meth = '') } ; ((my  $call = undef) = '->' . $meth . '(' . Main::join(([ map { $_->emit_parrot() } @{( $self->{arguments} )} ]), '') . ')'); if (Main::bool(($self->{hyper}))) { return scalar ('[ map { $_' . $call . ' } @{ ' . $self->{invocant}->emit_parrot(("" . ' } ]'))) } ; ((my  $List_args = []) = $self->{arguments}); ((my  $str = undef) = ''); ((my  $ii = undef) = 10); for my $arg ( @{$List_args || []} ) { ($str = $str . '  save $P' . $ii . '
'); ($ii = ($ii + 1)) }; ((my  $i = undef) = 10); for my $arg ( @{$List_args || []} ) { ($str = $str . $arg->emit_parrot(("" . '  $P') . $i . ' = $P0' . '
')); ($i = ($i + 1)) }; ($str = $str . $self->{invocant}->emit_parrot(("" . '  $P0 = $P0.') . $meth . '(')); ($i = 0); (my  $List_p = []); for my $arg ( @{$List_args || []} ) { ($List_p->[$i] = '$P' . (($i + 10))); ($i = ($i + 1)) }; ($str = $str . Main::join($List_p, ', ') . ')' . '
'); for my $arg ( @{$List_args || []} ) { ($ii = ($ii - 1)); ($str = $str . '  restore $P' . $ii . '
') }; return scalar ($str) }
}

;
{
package Apply;
sub new { shift; bless { @_ }, "Apply" }
sub code { $_[0]->{code} };
sub arguments { $_[0]->{arguments} };
((my  $label = undef) = 100);
sub emit_parrot { my $self = $_[0]; ((my  $code = undef) = $self->{code}); if (Main::bool(($code eq 'die'))) { return scalar ('  $P0 = new .Exception' . '
' . '  $P0[' . '"' . '_message' . '"' . '] = ' . '"' . 'something broke' . '"' . '
' . '  throw $P0' . '
') } ; if (Main::bool(($code eq 'say'))) { return scalar (Main::join(([ map { $_->emit_parrot() } @{( $self->{arguments} )} ]), '  print $P0' . '
') . '  print $P0' . '
' . '  print ' . '"' . '\\' . 'n' . '"' . '
') } ; if (Main::bool(($code eq 'print'))) { return scalar (Main::join(([ map { $_->emit_parrot() } @{( $self->{arguments} )} ]), '  print $P0' . '
') . '  print $P0' . '
') } ; if (Main::bool(($code eq 'array'))) { return scalar ('  # TODO - array() is no-op' . '
') } ; if (Main::bool(($code eq 'prefix:<~>'))) { return scalar (($self->{arguments}->[0])->emit_parrot(("" . '  $S0 = $P0') . '
' . '  $P0 = $S0' . '
')) } ; if (Main::bool(($code eq 'prefix:<!>'))) { return scalar ((If->new(('cond' => $self->{arguments}->[0]), ('body' => do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, Val::Bit->new(('bit' => 0)) ); $List_a }), ('otherwise' => do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, Val::Bit->new(('bit' => 1)) ); $List_a })))->emit_parrot()) } ; if (Main::bool(($code eq 'prefix:<?>'))) { return scalar ((If->new(('cond' => $self->{arguments}->[0]), ('body' => do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, Val::Bit->new(('bit' => 1)) ); $List_a }), ('otherwise' => do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, Val::Bit->new(('bit' => 0)) ); $List_a })))->emit_parrot()) } ; if (Main::bool(($code eq 'prefix:<$>'))) { return scalar ('  # TODO - prefix:<$> is no-op' . '
') } ; if (Main::bool(($code eq 'prefix:<@>'))) { return scalar ('  # TODO - prefix:<@> is no-op' . '
') } ; if (Main::bool(($code eq 'prefix:<%>'))) { return scalar ('  # TODO - prefix:<%> is no-op' . '
') } ; if (Main::bool(($code eq 'infix:<~>'))) { return scalar (($self->{arguments}->[0])->emit_parrot(("" . '  $S0 = $P0') . '
' . '  save $S0' . '
' . ($self->{arguments}->[1])->emit_parrot(("" . '  $S1 = $P0') . '
' . '  restore $S0' . '
' . '  $S0 = concat $S0, $S1' . '
' . '  $P0 = $S0' . '
'))) } ; if (Main::bool(($code eq 'infix:<+>'))) { return scalar ('  save $P1' . '
' . ($self->{arguments}->[0])->emit_parrot(("" . '  $P1 = $P0') . '
' . ($self->{arguments}->[1])->emit_parrot(("" . '  $P0 = $P1 + $P0') . '
' . '  restore $P1' . '
'))) } ; if (Main::bool(($code eq 'infix:<->'))) { return scalar ('  save $P1' . '
' . ($self->{arguments}->[0])->emit_parrot(("" . '  $P1 = $P0') . '
' . ($self->{arguments}->[1])->emit_parrot(("" . '  $P0 = $P1 - $P0') . '
' . '  restore $P1' . '
'))) } ; if (Main::bool(($code eq 'infix:<&&>'))) { return scalar ((If->new(('cond' => $self->{arguments}->[0]), ('body' => do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, $self->{arguments}->[1] ); $List_a }), ('otherwise' => do { (my  $List_a = []); (my  $List_v = []); $List_a })))->emit_parrot()) } ; if (Main::bool(($code eq 'infix:<||>'))) { return scalar ((If->new(('cond' => $self->{arguments}->[0]), ('body' => do { (my  $List_a = []); (my  $List_v = []); $List_a }), ('otherwise' => do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, $self->{arguments}->[1] ); $List_a })))->emit_parrot()) } ; if (Main::bool(($code eq 'infix:<eq>'))) { ($label = ($label + 1)); ((my  $id = undef) = $label); return scalar (($self->{arguments}->[0])->emit_parrot(("" . '  $S0 = $P0') . '
' . '  save $S0' . '
' . ($self->{arguments}->[1])->emit_parrot(("" . '  $S1 = $P0') . '
' . '  restore $S0' . '
' . '  if $S0 == $S1 goto eq' . $id . '
' . '  $P0 = 0' . '
' . '  goto eq_end' . $id . '
' . 'eq' . $id . ':' . '
' . '  $P0 = 1' . '
' . 'eq_end' . $id . ':' . '
'))) } ; if (Main::bool(($code eq 'infix:<ne>'))) { ($label = ($label + 1)); ((my  $id = undef) = $label); return scalar (($self->{arguments}->[0])->emit_parrot(("" . '  $S0 = $P0') . '
' . '  save $S0' . '
' . ($self->{arguments}->[1])->emit_parrot(("" . '  $S1 = $P0') . '
' . '  restore $S0' . '
' . '  if $S0 == $S1 goto eq' . $id . '
' . '  $P0 = 1' . '
' . '  goto eq_end' . $id . '
' . 'eq' . $id . ':' . '
' . '  $P0 = 0' . '
' . 'eq_end' . $id . ':' . '
'))) } ; if (Main::bool(($code eq 'infix:<==>'))) { ($label = ($label + 1)); ((my  $id = undef) = $label); return scalar ('  save $P1' . '
' . ($self->{arguments}->[0])->emit_parrot(("" . '  $P1 = $P0') . '
' . ($self->{arguments}->[1])->emit_parrot(("" . '  if $P0 == $P1 goto eq') . $id . '
' . '  $P0 = 0' . '
' . '  goto eq_end' . $id . '
' . 'eq' . $id . ':' . '
' . '  $P0 = 1' . '
' . 'eq_end' . $id . ':' . '
' . '  restore $P1' . '
'))) } ; if (Main::bool(($code eq 'infix:<!=>'))) { ($label = ($label + 1)); ((my  $id = undef) = $label); return scalar ('  save $P1' . '
' . ($self->{arguments}->[0])->emit_parrot(("" . '  $P1 = $P0') . '
' . ($self->{arguments}->[1])->emit_parrot(("" . '  if $P0 == $P1 goto eq') . $id . '
' . '  $P0 = 1' . '
' . '  goto eq_end' . $id . '
' . 'eq' . $id . ':' . '
' . '  $P0 = 0' . '
' . 'eq_end' . $id . ':' . '
' . '  restore $P1' . '
'))) } ; if (Main::bool(($code eq 'ternary:<?? !!>'))) { return scalar ((If->new(('cond' => $self->{arguments}->[0]), ('body' => do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, $self->{arguments}->[1] ); $List_a }), ('otherwise' => do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, $self->{arguments}->[2] ); $List_a })))->emit_parrot()) } ; if (Main::bool(($code eq 'defined'))) { return scalar (($self->{arguments}->[0])->emit_parrot(("" . '  $I0 = defined $P0') . '
' . '  $P0 = $I0' . '
')) } ; if (Main::bool(($code eq 'substr'))) { return scalar (($self->{arguments}->[0])->emit_parrot(("" . '  $S0 = $P0') . '
' . '  save $S0' . '
' . ($self->{arguments}->[1])->emit_parrot(("" . '  $I0 = $P0') . '
' . '  save $I0' . '
' . ($self->{arguments}->[2])->emit_parrot(("" . '  $I1 = $P0') . '
' . '  restore $I0' . '
' . '  restore $S0' . '
' . '  $S0 = substr $S0, $I0, $I1' . '
' . '  $P0 = $S0' . '
')))) } ; ((my  $List_args = []) = $self->{arguments}); ((my  $str = undef) = ''); ((my  $ii = undef) = 10); (my  $arg = undef); for my $arg ( @{$List_args || []} ) { ($str = $str . '  save $P' . $ii . '
'); ($ii = ($ii + 1)) }; ((my  $i = undef) = 10); for my $arg ( @{$List_args || []} ) { ($str = $str . $arg->emit_parrot(("" . '  $P') . $i . ' = $P0' . '
')); ($i = ($i + 1)) }; ($str = $str . '  $P0 = ' . $self->{code} . '('); ($i = 0); (my  $List_p = []); for my $arg ( @{$List_args || []} ) { ($List_p->[$i] = '$P' . (($i + 10))); ($i = ($i + 1)) }; ($str = $str . Main::join($List_p, ', ') . ')' . '
'); for my $arg ( @{$List_args || []} ) { ($ii = ($ii - 1)); ($str = $str . '  restore $P' . $ii . '
') }; return scalar ($str) }
}

;
{
package Return;
sub new { shift; bless { @_ }, "Return" }
sub result { $_[0]->{result} };
sub emit_parrot { my $self = $_[0]; $self->{result}->emit_parrot(("" . '  .return( $P0 )') . '
') }
}

;
{
package If;
sub new { shift; bless { @_ }, "If" }
sub cond { $_[0]->{cond} };
sub body { $_[0]->{body} };
sub otherwise { $_[0]->{otherwise} };
((my  $label = undef) = 100);
sub emit_parrot { my $self = $_[0]; ($label = ($label + 1)); ((my  $id = undef) = $label); return scalar ($self->{cond}->emit_parrot(("" . '  unless $P0 goto ifelse') . $id . '
' . Main::join(([ map { $_->emit_parrot() } @{( $self->{body} )} ]), '') . '  goto ifend' . $id . '
' . 'ifelse' . $id . ':' . '
' . Main::join(([ map { $_->emit_parrot() } @{( $self->{otherwise} )} ]), '') . 'ifend' . $id . ':' . '
')) }
}

;
{
package For;
sub new { shift; bless { @_ }, "For" }
sub cond { $_[0]->{cond} };
sub body { $_[0]->{body} };
sub topic { $_[0]->{topic} };
((my  $label = undef) = 100);
sub emit_parrot { my $self = $_[0]; ((my  $cond = undef) = $self->{cond}); ($label = ($label + 1)); ((my  $id = undef) = $label); if (Main::bool((Main::isa($cond, 'Var') && ($cond->sigil() ne '@')))) { ($cond = Lit::Array->new(('array1' => do { (my  $List_a = []); (my  $List_v = []); push( @{$List_a}, $cond ); $List_a }))) } ; return scalar ('' . $cond->emit_parrot(("" . '  save $P1') . '
' . '  save $P2' . '
' . '  $P1 = new .Iterator, $P0' . '
' . ' test_iter' . $id . ':' . '
' . '  unless $P1 goto iter_done' . $id . '
' . '  $P2 = shift $P1' . '
' . '  store_lex \'' . $self->{topic}->full_name(("" . '\', $P2') . '
' . Main::join(([ map { $_->emit_parrot() } @{( $self->{body} )} ]), '') . '  goto test_iter' . $id . '
' . ' iter_done' . $id . ':' . '
' . '  restore $P2' . '
' . '  restore $P1' . '
' . ''))) }
}

;
{
package Decl;
sub new { shift; bless { @_ }, "Decl" }
sub decl { $_[0]->{decl} };
sub type { $_[0]->{type} };
sub var { $_[0]->{var} };
sub emit_parrot { my $self = $_[0]; ((my  $decl = undef) = $self->{decl}); ((my  $name = undef) = $self->{var}->name()); (Main::bool((($decl eq 'has'))) ? ('  addattribute self, ' . '"' . $name . '"' . '
') : ('  .local pmc ' . ($self->{var})->full_name(("" . ' ') . '
' . '  .lex \'' . ($self->{var})->full_name(("" . '\', ') . ($self->{var})->full_name(("" . ' ') . '
'))))) }
}

;
{
package Sig;
sub new { shift; bless { @_ }, "Sig" }
sub invocant { $_[0]->{invocant} };
sub positional { $_[0]->{positional} };
sub named { $_[0]->{named} };
sub emit_parrot { my $self = $_[0]; ' print \'Signature - TODO\'; die \'Signature - TODO\'; ' }
}

;
{
package Method;
sub new { shift; bless { @_ }, "Method" }
sub name { $_[0]->{name} };
sub sig { $_[0]->{sig} };
sub block { $_[0]->{block} };
sub emit_parrot { my $self = $_[0]; ((my  $sig = undef) = $self->{sig}); ((my  $invocant = undef) = $sig->invocant()); ((my  $pos = undef) = $sig->positional()); ((my  $str = undef) = ''); ((my  $i = undef) = 0); (my  $field = undef); for my $field ( @{($pos || []) || []} ) { ($str = $str . '  $P0 = params[' . $i . ']' . '
' . '  .lex \'' . $field->full_name(("" . '\', $P0') . '
')); ($i = ($i + 1)) }; return scalar ('.sub ' . '"' . $self->{name} . '"' . ' :method :outer(' . '"' . '_class_vars_' . '"' . ')' . '
' . '  .param pmc params  :slurpy' . '
' . '  .lex \'' . $invocant->full_name(("" . '\', self') . '
' . $str . Main::join(([ map { $_->emit_parrot() } @{( $self->{block} )} ]), '') . '.end' . '
' . '
')) }
}

;
{
package Sub;
sub new { shift; bless { @_ }, "Sub" }
sub name { $_[0]->{name} };
sub sig { $_[0]->{sig} };
sub block { $_[0]->{block} };
sub emit_parrot { my $self = $_[0]; ((my  $sig = undef) = $self->{sig}); ((my  $invocant = undef) = $sig->invocant()); ((my  $pos = undef) = $sig->positional()); ((my  $str = undef) = ''); ((my  $i = undef) = 0); (my  $field = undef); for my $field ( @{($pos || []) || []} ) { ($str = $str . '  $P0 = params[' . $i . ']' . '
' . '  .lex \'' . $field->full_name(("" . '\', $P0') . '
')); ($i = ($i + 1)) }; return scalar ('.sub ' . '"' . $self->{name} . '"' . ' :outer(' . '"' . '_class_vars_' . '"' . ')' . '
' . '  .param pmc params  :slurpy' . '
' . $str . Main::join(([ map { $_->emit_parrot() } @{( $self->{block} )} ]), '') . '.end' . '
' . '
') }
}

;
{
package Do;
sub new { shift; bless { @_ }, "Do" }
sub block { $_[0]->{block} };
sub emit_parrot { my $self = $_[0]; Main::join(([ map { $_->emit_parrot() } @{( $self->{block} )} ]), '') }
}

;
{
package Use;
sub new { shift; bless { @_ }, "Use" }
sub mod { $_[0]->{mod} };
sub emit_parrot { my $self = $_[0]; '  .include ' . '"' . $self->{mod} . '"' . '
' }
}


}

1;