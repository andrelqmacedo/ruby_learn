# delete method - remove a key-value pair by its 'key', and it returns the 'value'
# as it's return value, if we want to keep it.

superheroes = {
  spiderman: "Peter Parker",
  superman: "Clark Kent",
  batman: "Bruce Wayne"
}

p superheroes.delete(:spiderman) # => "Peter Parker"
p superheroes

# This method mutates the original hash! Even though it's not a 'bang' method
# And it's return back the deleted/removed value for the key-value pair that was just removed.
# in this case, the string "Peter Parker".
# So if we want to save a value, as we're deleting the pair, we can assign this to a variable!

batman_real_name = superheroes.delete(:batman)
p batman_real_name
