my $line = " Hello World \n";
chomp($line); # 줄바꿈 제거
$line =~ s/^\s+|\s+$//g; # 앞뒤 공백 제거

print "$line"