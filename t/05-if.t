use v6-perlito; no warnings;

class Main {
    say '1..7';

    if 0 {
        print 'not '
    }
    say 'ok 1';

    if 1 {
        say 'ok 2'
    }

    if 0 {
        say 'not ok 3'
    }
    else {
        say 'ok 3';
    }

    if 1 {
        say 'ok 4'
    }
    else {
        say 'not ok 4';
    }

    if 0 {
        say 'not ok 5'
    }
    elsif 0 {
        say 'not ok 5 # elsif'
    }
    else {
        say 'ok 5';
    }

    unless 0 {
        say 'ok 6'
    }

    unless 1 {
        print 'not '
    }
    say 'ok 7';

}
