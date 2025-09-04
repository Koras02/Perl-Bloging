# 선언 후 호출 = 일반적이고 안전
sub hello { print "Hello\n"}
hello();


# 선언 전 호출 = Perl은 기본적으로 앞선 선언 필요 하지만 use strict & warnings를 켠 상태에서는 컴파일러 오류 발생 

# Forward Declaration: 선언 전에 호출하고 싶다면 미리 프로토타입(Prototype) 선언 
sub jump; # 프로토타입 선언 
jump();

sub jump { 
    print "Jump!!\n";
}