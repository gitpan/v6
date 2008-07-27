use v6-alpha;
use Test;
use v6;

## test perl 6 regexes, requiring P5 regex to work

use Test;
plan 535;
force_todo(18..29,49..54,62,64,66,68,77,79,81..92,94..96,101..113,247,254..255,257,259..263,266,269,274,284,286,301,303..304,314,332..372,374..388,393..394,398,400..402,404..433,484..499,502,504,507,516..522,526..528);

if !eval('("a" ~~ /a/)') {
  skip_rest "skipped tests - rules support appears to be missing";
  exit;
}

#my $test_data = slurp 'regex_tests';
#ok $test_data, 'slurp data successful';

# diag $test_data;

my $tests = $*PROGRAM_NAME;
$tests ~~ s:P5/p6regex.t/regex_tests/;

my $fh = open $tests;

sub p6rule_is( $target, $pattern, $description?, :$todo ) {
    eval "\$target ~~ rx/$pattern/";
    ok( !$! && $/, $description, :$todo );
    $! and diag $!;
}


sub p6rule_isnt( $target, $pattern, $description?, :$todo ) {
    eval "\$target ~~ rx/$pattern/";
    ok( !$! && !$/, $description, :$todo );
    $! and diag $!;
}


sub p6rule_like( $target, $pattern, $expected, $description?, :$todo ) {
    eval "\$target ~~ rx/$pattern/";
    like( $! ?? $! !! "$/", $expected, $description, :$todo );
}

my $line_count = 1;
my $todotodo = '';
for slurp($fh) -> $line {
    if $line ~~ rx:P5/^#/ {
	if not $todotodo and $line ~~ /todo/ {
	    # XXX regex can't parse vars yet, so fake it with switch
	    $todotodo = do given $*EXECUTABLE_NAME {
		when /pugs/ {
		    # XXX eventually should use STD grammar adverb def here
		    if $line ~~ rx:P5/:pugs<(.*?)>/ { $0 }
		}
		when /parrot/ {
		    # XXX eventually should use STD grammar adverb def here
		    if $line ~~ rx:P5/:parrot<(.*?)>/ { $0 }
		}
		# your ad here
		default { '' }
	    }
	}
	next;
    }
    next unless $line ~~ rx:P5/\t/;
    chomp $line;

    my ($pattern, $target, $result, $description) = split rx:P5/\t+/, $line;

    $target ~~ s:P5/^'(.*)'$/$1/;
    $target ~~ s:P5:g/\\n/\n/;
    $target ~~ s:P5:g/\\r/\r/;
    $target ~~ s:P5:g/\\e/\e/;
    $target ~~ s:P5:g/\\t/\t/;
    $target ~~ s:P5:g/\\f/\f/;
    $target ~~ s:P5:g/\\(\d{3})/{chr(:8($1))}/;
    $target ~~ s:P5:g/\\x\[([a-fA-F0-9]+)\]/{chr(:16($1))}/;
    $target ~~ s:P5:g/\\x([a-fA-F0-9]+)/{chr(:16($1))}/;

    my $todo;

    if $todotodo {
	$todo = $todotodo;
	$todotodo = '';		# assume no todo for next data line
    }

    if $result ~~ rx:P5 {^/(.*)/$} {
        p6rule_like($target, $pattern, rx:P5/$1/, $description, :$todo);
    }
    elsif $result eq 'y' {
        p6rule_is($target, $pattern, $description, :$todo);
    }
    elsif $result eq 'n' {
        p6rule_isnt($target, $pattern, $description, :$todo);
    }
    else { die "bug\n$line" }

    sleep 1 unless ($line_count++ % 50);
}
