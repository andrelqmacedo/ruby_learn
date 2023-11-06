# Define a custom_index method that accepts a string and a search term.
# The method should return the first index position of the
# search term within the string. If the search term does not exist,
# return nil. Do not use the built-in index method in your solution.
#
# Examples:
# The => indicates the expected return value
# custom_index("I am very handsome", "I")     => 0
# custom_index("I am very handsome", "e")     => 6
# custom_index("I am very handsome", "Z")     => nil
# custom_index("I am very handsome", "am")    => 2
# custom_index("I am very handsome", "ma")    => nil

def custom_index(text, search_term)
  search_term_length = search_term.length
  text.chars.each_with_index do |character, index|
    sequence = text[index, search_term_length]
    return index if sequence == search_term
  end
  nil
end

p custom_index("I am very handsome", "I")     #=> 0
p custom_index("I am very handsome", "e")     #=> 6
p custom_index("I am very handsome", "Z")     #=> nil
p custom_index("I am very handsome", "am")    #=> 2
p custom_index("I am very handsome", "ma")    #=> nil
