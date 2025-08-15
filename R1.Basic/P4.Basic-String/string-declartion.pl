my $name = "Alice";
my $str1 = 'Hello $name'; # 그대로 출력: Hello $name
my $str2 = "Hello $name"; # 변수 치환: Hello Alice

print "name is $name, $str1, $str2";