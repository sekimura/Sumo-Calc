my $url_format = 'http://sumo.goo.ne.jp/kiroku_daicho/hoshi_%d_%s.html';
my @numbers = ((11..34), (491..545));

for my $num (@numbers) {
    for my $part (qw/1_1_15 1_2_15 1_3_15 2_4_15 2_5_15/) {
        printf "$url_format\n", $num, $part;
    }
}
