sub add {
    my ($x, $y) = @_;   # @_에서 두 개의 값을 꺼냄
    return $x + $y;
}

my $result = add(10, 20);
print "result: $result\n";  # 결과: 30
