# Split method - it's a method to split a string, utilizing a delimiter, i.e., a character that Ruby is going to look for.
# and Ruby will split the string where and when it find the delimiter
# It'll split the given string and return a array with the splitted parts

sentences = "Hi, My name is Andre. My favorite hobby is coding!"

# If we dont pass any argument, Ruby will assume that the delimiter is the space, so it'll iterate over the string
# find every space and the split the string at that point. Then Ruby will return an array of how many elements
# (or segments) as result
# So, the default (using no arguments) is no different that invoking split with an argument of a space.
p sentences.split
p sentences.split(" ")


p sentences.split(".")
p sentences.split("o") # It'll split in every occurrance of the argument passed

puts

sentences.split(" ").each do |word|
  puts "Currently, i'm on the word '#{word}'!"
  puts "It has #{word.length} characters."
end
