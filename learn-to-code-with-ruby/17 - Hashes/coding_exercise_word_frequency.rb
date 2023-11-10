# Define a word_frequency method that accepts a piece of text.
# Return a hash with a count of the number of times each word
# appears within the text. The hash keys should be the words
# and the values should be their counts. Assume the text will
# be in all lowercase.
#
# Examples:
# The => indicates the expected return value
# word_frequency("blue red blue green")  => {"blue"=>2, "red"=>1, "green"=>1}
# word_frequency("a land far far away")  => {"a"=>1, "land"=>1, "far"=>2, "away"=>1}
# word_frequency("")                     => {}

# def word_frequency(text)
#   hash_to_return = {}
#   words_array = text.split(" ")
#   words_array.each do |word|
#     if hash_to_return[word].nil?
#       hash_to_return[word] = 1
#     else
#       hash_to_return[word] = hash_to_return[word] + 1
#     end
#   end
#   hash_to_return
# end

def word_frequency(text)
  hash_to_return = Hash.new(0)
  words_array = text.split(" ")
  words_array.each { |word| hash_to_return[word] += 1 }
  hash_to_return
end
p word_frequency("blue red blue green")  #=> {"blue"=>2, "red"=>1, "green"=>1}
p word_frequency("a land far far away")  #=> {"a"=>1, "land"=>1, "far"=>2, "away"=>1}
p word_frequency("")                     #=> {}


# CHEAT CODE
# In new versions of Ruby, the array has a special method called 'tally' which counts how many times each element occurs within an array
# and as a hash and it returns that hash

def word_frequency(text)
  text.split(" ").tally
end
