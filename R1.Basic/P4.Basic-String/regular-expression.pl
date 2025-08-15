my $text = "This Language Perl";

# Perl 있는지확인
if ($text =~ /Perl/) { print "Found Perl\n"; }

$text =~ s/Perl/Python/; 

# perl
print $text, "\n";