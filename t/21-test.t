use v6-perlito;

class Main {
    use Perlito::Test;

    Perlito::Test::plan 1;
    Perlito::Test::ok( 1==1, "Perlito::Test works");
}
