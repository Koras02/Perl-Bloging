sub modify {
    $_[0] = $_[0] * 2; # 첫번째 인자를 두배로 변경
}

my $num = 10;
modify($num);
print $num; # 20 (첫번째 인자를 두배로 변경)