print "Enter 'a' Attack key: ";
my $keyboard = <STDIN>;
chomp $keyboard;

if ($keyboard eq "a") {
    print "Player Attack"
} else {
   print "Exit!"
}

