# find/detect methods - find the first array element that matches a condition
# The two methods are aliases for one another, i.e., they are two names for the exact same method

# The difference between the 'find' and 'select' methods, is the 'select' will extract all of the array elements
# that fit a condition, while find and detect methods will only extract the FIRST array element that satisfies a
# condition

words = ["dictionary", "refrigerator", "platypus", "microwave"]
p words.select { |word| word.include?("e") } #return an array will ALL the matches
p words.find { |word| word.include?("e") } #return just the FIRST match, if there's any

p words.detect { |word| word.include?("e") } #alias, return the FIRST match

# If the condition is never met, the find and detect methods will return NIL (if we do that with select, it will give us back an empty array)
 p words.detect { |word| word.include?("z") }
