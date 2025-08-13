my $x = 1;
my $y = 5;

print $x && $y, "\n"; # 5 | and 연산자
print $x || $y, "\n"; # 3 | or 연산자
# 0 | Not 연산자 우선 순위로 인한 0 출력 X = x가 0보다 크면 바로 줄바꿈 되서 false가 출력 
# 0 보다 같거나 작으면 0과 true가 출력됨
print !$x ? "true" : "false", "\n"; 

# 단어 로도 사용 가능


