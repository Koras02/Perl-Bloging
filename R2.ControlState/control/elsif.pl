use strict;
use warnings;

my $user = "zelda world";

print "Welcome to the ${user} \n";
print "Please choose a profile: \n";
print "1.${user} \n";
print "Enter your profile: ";

my $choice = <STDIN>;
chomp $choice; # Remove the New Character

if ($choice == 1) {
    print "- The Legend of Zelda: Tears of the Kingdom\n";
    print "- Super Mario Worlds\n";
} elsif ($choice == 2) {
    print "- No Profile"
} else {
    print "No Profiles, Please your Create Profile"
}