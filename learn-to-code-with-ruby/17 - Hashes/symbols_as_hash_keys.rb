# Using symbols as keys in a hash

person = {
  :name => "Andre",
  :age => 34,
  :handsome => true
}

puts person[:name]
puts person[:age]
puts person[:handsome]

# This syntax or practice of using symbols as keys in hashes is so common that a version of Ruby (1.9) actually
# introduced a shortcut, i.e., a simpler way to do this operation.
# We move the colon to the end of the symbol and get rid of the hash rocket. It's still going to be a symbol, it's just a different
# syntax to write it, that requires lesser characters.

person_with_symbol_shortcut = {
  name: "Andre",
  age: 34,
  handsome: true
}

# To acess the values with the symbols with this syntax, we use the same technical way with the original syntax

puts person_with_symbol_shortcut[:name]
puts person_with_symbol_shortcut[:age]
puts person_with_symbol_shortcut[:handsome]
