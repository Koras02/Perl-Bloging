sub minmax {
    my ($x, $y) = @_;
    return ($x < $y ? $x : $y, $x > $y ? $x : $y);
}

my ($min, $max) = minmax(10, 20);
print "min: $min, max: $max\n"; # min: 10, max: 20