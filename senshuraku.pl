#!/usr/bin/env perl
use strict;
use warnings;

use IO::File;

my $resutls_filename = 'temp.txt';

sub parse_results {
    my $fh = new IO::File;
    $fh->open("< $resutls_filename") or die "can't open file $resutls_filename";
    while (my $line = <$fh>) {
        chomp($line);
        my $str = $line . <$fh>;
        my ($result, $senshuraku) = ($str =~ m{<font class="common12-18-333">(.*?)</font>.*class="hoshitori_riki3-1">(.*)</td>});
        my $win = 0;
        if ($result =~ /(\d+)勝/) {
            $win = $1;
        }
        $senshuraku = $senshuraku =~ /○/ ? 'win' : 'loss';
        print $win . " " . $senshuraku . "\n";
    }
}


sub main {
    my $results = parse_results();
}

main();
