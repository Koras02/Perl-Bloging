# 1. 일반 호출
sub say_hello() {
    print "Hell Perl\n"
}

say_hello(); # 일반 호출
say_hello; # () 생략 가능


# 2. 매개변수 포함 호출
sub print_sum {
    my ($x, $y) = @_;
    print $x + $y, "\n";
}

print_sum(10, 20); # result: 30


# 3.함수처럼 반환값 활용
sub square {
    my ($num) = @_;
    return $num * $num;
    
}

my $value = square(0);
print "6의 제곱: $value\n"