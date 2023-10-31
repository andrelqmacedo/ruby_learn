# select method - filter array for elements that satisfy a condition
# reject method - filter array for elements that do not satisfy a condition

# We want to select certain elements of the array, based in some kind of condition

words = ["racecar", "selfless", "sentences", "level"]

# palindrome  - a word that's the same backwards as it is forwards

# The block evaluatiuon with the use of select and reject methods must return a boolean value

palindromes = words.select { |word| word == word.reverse }
# When we use select, if the codition is evaluated true, select is going to keep that elements in a new array
p palindromes


# The reject method does the exact opposite:
animals = ["Cheetah", "Cat", "Lion", "Elephant", "Dog", "Cow"]
# If the block returns true, Ruby will reject/exclude that element from the generated array
# If the block returns false, then Ruby will INCLUDE that element
p animals.reject { |animal| animal.include?("C") }
