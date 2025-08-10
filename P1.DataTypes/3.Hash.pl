my %movie_ratings = (
    "Inception" => 8.8,
    "Jurassic Park" => 8.1,
    "Avengers: Endgame" => 8.4,
    "Taken" => 7.8
);

print "Rating of Inception is $movie_ratings{'Inception'}\n"; # "Rating of Inception is 8.8"

# 해시 전체 출력
while (my ($movie, $rating) = each %movie_ratings) {
    print "$movie has a rating of $rating\n"
} 
# "Inception has a rating of 8.8"
# "Jurassic Park has a rating of 8.1"   
# "Avengers: Endgame has a rating of 8.4"
# "Taken has a rating of 7.8"