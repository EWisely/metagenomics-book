#!/usr/bin/env perl6

sub MAIN (Str $file='/usr/share/dict/words', :$min=2) {
    die "$file not a file" unless $file.IO.f;

    my $i = 0;
    for $file.IO.lines -> $line {
        for $line.words.map(*.lc).grep({$_.chars >= $min && $_ eq $_.flip})
        -> $word {
            printf "%3d: %s\n", ++$i, $word;
        }
    }
}
