# How to exclude characters from a RegEx research pattern?

sales = "I bought 9 apples, 25 bananas and 4 oranges at the store."

p sales.scan(/[aeiou]/)
# All the matches of those five characters anywhere throughout the string will constitute a match

p sales.scan(/[aeiou\d]/)
# When we add the '\d' to indicate a digit, we'll receive all the characters (lower case vowels) as well as all the digits, from 0 to 9

# We use the square brackets to include those characters in the basket of characters that we want to match
puts
# In order to exclude them, we do as we go to the very beginning of the square brackets, and we put this upper carrot
# (^) as a negation symbol, so it inverts everything that follows.
# So, what this is essentially saying is the exact opposite 'match a character if its not every lower case vowel or
# any digit.
p sales.scan(/[^aeiou\d]/)

puts
# So, what we would have to do is continue expanding this search pattern to make sure we exclude
# all the characters we want to leave out:
p sales.scan(/[^aeiouAEIOU,\s\.\d]/) # the \s is for spaces, and the \d for digits
