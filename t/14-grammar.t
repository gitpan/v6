use v6-perlito; no warnings;

class Main {

    token digits {
        [ '1' | '2' | '3' ]+
    }

    say '1..1';
    my $m = Main.digits( '123', 0);
    say '# from: ', $m.from;
    say '# to:   ', $m.to;
    if $m.to != 3 {
        print "not ";
    }
    say 'ok 1';
}

