sub counter {
    my $count = 0;
    $count++;

    print "현재 카운트: $count\n";
}

counter(); # 현재 카운트: 1
counter(); # 현재 카운트: 1 (로컬 변수라 새로 초기화)
