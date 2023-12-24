voicemail = "I can be reached at 555-123-4567 or regexman@gmail.com"

# Typically, whenever we have something special in RegEx, we're going to have a special syntax to accompany it so
# regex understands what we're trying to do.

# The backslash d (\d) used inside the foward slashes (//) is going to give us every single digit match throughout our string,
# no matter how many times it occurs, we're going to be able to pull out just the numeric characters from the string.

# The power of RegEx is extracting content from a different collection of strings! The string content can be
# totally different, but our regex is smart and clever, it can still pull out what we're looking for.


# Any digit (0 through 9)
p voicemail.scan(/\d/)


# Plus sign -> 1 or more digits in a row
p voicemail.scan(/\d+/)


# {} -> inside goes the number that specifies an exact numeric amount to match of whatever symbol preceeds the curly braces
p voicemail.scan(/\d{3}/)  # exactly 3 digits in a row
p voicemail.scan(/\d{4}/) # exactly 4 digits in a row

# 3 or more consecutives digits in a row
p voicemail.scan(/\d{3,}/)

# We can provide a second number within the curly braces to specify the range of numeric values that we want to match
# Between 2 and 3 consecutive digits in a row
p voicemail.scan(/\d{2,3}/)
