use v6-perlito;

class Main {
    say '1..11';
    my @a = ( 1, 2 );
    for @a -> $v {
        say 'ok ' ~ $v ~ ' - loop';
    }

    my $x = 123;
    @a = ( 3, 6 );
    for @a -> $v {
        my $x = do { 3 };
        if $x != 3 {
            print 'not '
        }
        say 'ok ' ~ $v ~ ' - for block';
        my @b = ( $v + 1, $v + 2 );
        for @b -> $v {
            my $x = do { 3 };
            if $x != 3 {
                print 'not '
            }
            say 'ok ' ~ $v ~ ' - inner for block';
        }
    }

    if $x != 123 {
        print 'not '
    }
    say 'ok 9 - for block # ', $x;

    @a[0] = 10;
    @a[1] = 11;
    for @a {
        say "ok $_ - default variable";
    }
}
