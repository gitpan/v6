package v6::perlito;
use Filter::Util::Call;
use strict;

sub compile {
    my $source = $_[0];
    return $source if $source =~ /^\s*$/;
    $::_V6_COMPILER_NAME    = 'MiniPerl6';
    $::_V6_COMPILER_VERSION = '6.0';
    require MiniPerl6::Perl5::Emitter;
    require MiniPerl6::Grammar;
    require MiniPerl6::Grammar::Regex;
    require MiniPerl6::Emitter::Token;
    my @comp_unit;
    my $pos = 0;
    my $p = MiniPerl6::Grammar->exp_stmts( $source, $pos );
    if (!$p || length($source) > $p->to) {
        warn "<$source>\n";
        die "Syntax error at pos ", $p->to, "\n";
    }
    push @comp_unit,
        CompUnit->new(
            name => 'GLOBAL',
            body => $$p,
        );
    # Don't write when we failed to compile, otherwise it never recompiles!
    die "Syntax error" unless @comp_unit;
    my $result;
    $result .=  "# Do not edit this file - Generated by $::_V6_COMPILER_NAME $::_V6_COMPILER_VERSION\n";
    $result .=  "use v5;\n";
    $result .=  "use utf8;\n";
    $result .=  "use strict;\n";
    $result .=  "use warnings;\n";
    $result .=  "no warnings ('redefine', 'once', 'void', 'uninitialized', 'misc');\n";
    $result .=  "use MiniPerl6::Perl5::Runtime;\n";
    $result .=  "our \$MATCH = MiniPerl6::Match->new();\n";
    $result .= CompUnit::emit_perl5_program( \@comp_unit );
    $result .=  "1;\n";
    return $result;
}

sub import {
    filter_add(
        sub {
            my $status;
            if (($status = filter_read_exact(1e9)) > 0) {
                $_ = compile($_);
            }
            $status;
        })
}

1;

=head1 NAME 

v6::perlito - A Perlito front-end for v6.pm

=head1 SYNOPSIS

    # file: hello_world.pl
    use v6-perlito;
    "hello, world".say;

    $ perl hello_world.pl

=head1 DESCRIPTION

The C<v6::perlito> module is a front-end to the Perlito Perl 6 compiler.

=head1 REQUIREMENTS

- The source file header must be valid perl5 I<and> perl6 code.

This is a valid header:

    #!/usr/bin/perl
    use v6-perlito;

* it executes perl5

* perl5 will call the C<v6.pm> module.

This is an invalid header:

    #!/usr/bin/pugs
    use v6;

* it tells perl5 to execute C</usr/bin/pugs>.

* it tells perl5 that Perl v6.0.0 required.

=head1 AUTHORS

The Pugs Team E<lt>perl6-compiler@perl.orgE<gt>.

=head1 SEE ALSO

The Perl 6 homepage at L<http://dev.perl.org/perl6>.

- the Perl 6 Synopsis: L<http://dev.perl.org/perl6/doc/synopsis.html>.

The Pugs homepage at L<http://pugscode.org/>.

The Parrot homepage at L<http://www.parrotcode.org>.

=head1 COPYRIGHT

Copyright 2006, 2010 by Flavio Soibelmann Glock and others.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

=cut
