sub make_ref {
    my @arr = (1,2,3,4,5);
    return \@arr;  # 배열 참조 반환
}

my $ref = make_ref();  # 배열 참조 반환
print join(", ", @{$ref}); # 1, 2, 3, 4, 5