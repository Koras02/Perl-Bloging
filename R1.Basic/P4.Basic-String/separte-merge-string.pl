my $csv = "apple,banana,cherry";
my @fruits = split(/,/, $csv); # {'apple', 'banana', 'cherry'}
my $joined = join(" | ", @fruits); 

print "@fruits\n"; # 배열 그대로 출력  apple banana cherry
print "$joined\n"; # join 결과 출력 apple | banana | cherry