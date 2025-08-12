package MyUtils;
use strict;
use warnings;
use utf8;
use Exporter 'import';

# 외부에서 사용할 함수 목록
our @EXPORT_OK = qw(save_utf8);


# UTF-8 파일 저장 함수
sub save_utf8 {
    my ($file_name, $content) = @_;
    open my $fh, '>:encoding(utf8)', $file_name
}