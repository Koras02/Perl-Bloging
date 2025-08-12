use strict;
use warnings;
use utf8;

# 한글 깨짐으로 인한 출력 결과 파일 저장 
my $file_name = "result.txt";
open my $fh, ">:encoding(utf8)", 'result.txt' or die $!; 

my $age = 15;

if ($age >= 20) {
    print $fh "성인입니다.\n";
} else {
    print $fh "미성년자입니다.\n";
}

close $fh;
print "[$file_name] 파일에 결과 저장! \n";