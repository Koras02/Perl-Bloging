my $anon = sub {
    my ($name) = @_;
    print("Hello, $name\n");
};

$anon->("민수"); # 익명 서브루틴 호출 result: Hello, 민수

