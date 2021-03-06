#!/usr/bin/env perl6

use lib '.';
use DNA1;

sub MAIN (Str $str) {
    try {
        my $dna = DNA.new($str);
        dd $dna;
        CATCH { default { .Str.say } }
    }
}
