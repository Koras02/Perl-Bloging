use utf8;
use warnings;
use strict;
binmode(STDOUT, ":encoding(utf8)"); 


my $age = 25;

if ($age > 18) {
    print "만 19세 이상 입니다.\n"
} else {
    print "미성년자 입니다. \n"
}