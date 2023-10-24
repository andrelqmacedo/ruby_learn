# Declare an empty_array method that returns an empty array

def empty_array
  []
end

# Declare a three_colors method that returns an array with
# the strings of "red", "green", and "blue" (in that order)

def three_colors
  #p ["red", "green", "blue"]
  %w[red green blue]
end


# Declare a five_favorite_numbers method that returns an
# array of 5 integers. The integers are up to you.


def five_favorite_numbers
  [7, 13, 19, 44, 59]
end

p empty_array
p three_colors
p five_favorite_numbers
