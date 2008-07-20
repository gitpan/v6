use v6-alpha;

use Test;

=begin description

`is primitive` seems to break named sub parameters in pugs.

=end description

plan 1;


multi sub testsub (Str $x, :$y) is primitive { "$x $y" }

is testsub("moose", y => 42), "moose 42", "named args in primitive subs";

# vim: ft=perl6
