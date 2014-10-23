use v6-perlito;

class Main {
    say '1..3';
    my $m = MiniPerl6::Match.new( str => 'abcdef', from => 2, to => 4, bool => 1 );
    # say 'match scalar: ', $$m;
    if ($$m) eq 'cd' {
        say 'ok 1';
    }
    else {
        say 'not ok 1';
    }

    $m = MiniPerl6::Grammar.word( 'abcdef', 2 );
    # say 'match scalar: ', $$m;
    if ($$m) eq 'c' {
        say 'ok 2';
    }
    else {
        say 'not ok 2';
    }

    $m = MiniPerl6::Grammar.is_newline( "ab\ndef", 2 );
    # say 'match scalar: ', $$m;
    if ($$m) eq "\n" {
        say 'ok 3';
    }
    else {
        say 'not ok 3';
    }
}
