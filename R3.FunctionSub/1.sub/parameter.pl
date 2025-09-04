sub greet_person {
    my ($name) = @_; # @_ 배열에 첫 번재 인자를 가져옴
    print "Hello, $name!\n";
}

greet_person("철수"); # 출력: Hello, 철수!
greet_person("Jimmy"); # 출력: Hello, Jimmy!