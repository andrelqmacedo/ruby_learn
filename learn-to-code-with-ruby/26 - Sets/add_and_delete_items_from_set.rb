# The 'add' method adds an element to the set
# The 'delete' method removes an element of the set
# Both methods return the Set itself

require "set"

plays = Set.new(["Romeo and Juliet", "Hamlet"])

p plays
p plays.class

puts

plays.add("King Lear")
p plays
plays.delete("Hamlet")
p plays

# The 'add' and 'delete' methods itself return the set, i.e, the modified set, in a way we'd not need to
# output the set, just print it like this:

p plays.add("Otelo")

# If we try do delete a value that's not on the set, there'll be no problem also.
