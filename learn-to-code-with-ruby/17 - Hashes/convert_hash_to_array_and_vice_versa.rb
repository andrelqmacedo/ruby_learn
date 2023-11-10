# to_a method - converts a hash to an array
# to_h method - converts a array to an hash

spice_girls = {
  scary: "Melanie Brown",
  sporty: "Melanie Chisholm",
  baby: "Emma Bunton",
  ginger: "Geri Halliwell",
  posh: "Victoria Beckham"
}

p spice_girls.to_a
# We're gonna get back an array of arrays, and each nested/internal array is going to store the key and it's respective value.
puts
# This structure is needed to take an array and converted it to a hash, i.e., we need an array of nested arrays, because one
# dimensional array is not sufficient. That's because we need to communicate the associations between the keys and the values,
# and we do this by nesting arrays within the larger array, and within each nested array we specify a key and a value.

power_rangers = [
  [:red, "Jason"],
  [:black, "Zack"],
  [:pink, "Kimberly"]
]

p power_rangers.to_h
