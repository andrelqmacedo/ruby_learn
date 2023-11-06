# index method - find index of first occurence of substring

fact = "I am very handsome"

p fact.index("I")
p fact.index("e")
p fact.index("z")

# The index method can actually accept an argument of multiple characters, and that simply means we're going to look
# for that sequence of characters or that substring in sequence.
# It's going to give back the index of the first character match

p fact.index("am")
p fact.index("and")

# Unlike the count method, the order of the characters matters.

# The index methods optionally accepts a second argument, that represents the starting index position
# of the search. This index is inclusive.
# By default, Ruby will start the search from the beginning of yout string
p fact.index("e", 3)


# Otherwise, the 'rindex' method is the reverse of the index method, i.e., it's going to start from the end
# of the string and search backwards and give you the index of the first match, starting from the end.

p fact.rindex("e")
