# Anchor - regular expression symbol that signifies a location in the string (beginning or end)

# We can use the anchor to tell the pattern to look specifically at the very beginning or the very end
# of the string, but nowhere in between

poem = "99 bottles of beer on the wall, 99 bottles of beer..."

p poem.scan(/\d+/)

# But what if we only want to pull out the collection of digits at the very beginning of a string?

# We can provide an anchor right before our digit specifier and it's going to look like this:

p poem.scan(/\A\d+/) # The backslash followed by the letter A forms an anchor, and what it degisnates is
                     # 'look at the verry beginning of the string. connect or bind yourself to the very beginning
                     # and then, from that point, look for the presence of one or more digits in a row.'


p poem.scan(/\.\z/)
