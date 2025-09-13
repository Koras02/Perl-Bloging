sub add {
    my ($a, $b) = @_;
    my $sum = $a + $b;
    return $sum;
}

my $result = add(5, 7);
print "total = $result\n";  # total == 12

sub multiply {
  my($a, $b) = @_;
  $a * $b;  # return 생략
}

print multiply(2,4) # 8