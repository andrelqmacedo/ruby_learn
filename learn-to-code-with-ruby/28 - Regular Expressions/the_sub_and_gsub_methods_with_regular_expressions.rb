# 'sub' method - replace the first occurence of a match
# 'gsub' method - replace all occurences of a match

puts "555 555 5555".sub(" ", "-") # the first argument is what we want to replace, and the second is what we want to replace it with
# as explained above, the sub method will only replace the first occurence.

puts "555 555 5555".gsub(" ", "-") # the gsub replaces all occurences

# Even we 'gsub' we'll run into specific issues that can be more elegantly solved with RegEx.
puts

puts "1-(555)-123-4567".gsub("-", "").gsub("(", "").gsub(")", "")
puts "1-(555)-123-4567".gsub(/[-()]/, "")

# sub!
# gsub!   - Complementary bang methods, that are going to overwrite the original string object with the
#           replacement string that we generate.
