print "Please your name:";
my $name = <STDIN>;  # 사용자 입력 받기
chomp $name;    # 끝의 개행 제거
print "Hello, $name!\n";