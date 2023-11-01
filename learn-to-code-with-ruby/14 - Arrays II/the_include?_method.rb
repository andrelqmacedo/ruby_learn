# include? method - checks for inclusion within the array
# On a string, the include? method checks for the inclusion of a substring

p "action".include?("act")

movie_genres = ["comedy", "action", "drama", "horror"]

p movie_genres.include?("drama")
p movie_genres.include?("romance")

# Be mindful of case sensitivity
p movie_genres.include?("Drama")
