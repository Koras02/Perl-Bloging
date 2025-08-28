use DateTime;

# if 문

my $WhiteDay = "";
my $dt_now = DateTime->now;
my $date_day = DateTime->new(year=>2026, month =>3, day=> 14);

if ($dt_now < $date_day) {
    print "White Day is 2026-3-14 Saturday"
}