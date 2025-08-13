use strict;
use warnings;
use utf8;

open my $fh, '>:encoding(utf8)', 'out.txt' or die $!;
print $fh "한글 테스s트입니다.\n";
close $fh;
