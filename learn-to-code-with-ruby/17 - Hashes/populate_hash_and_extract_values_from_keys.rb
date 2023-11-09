# Hash key-value assignment syntax
# key => value
# => hash rocket

nfl_roster_salaries = {
  "Patrick Mahomes" => 50_000_000,
  "Josh Allen" => 25_000_000,
  "Joe Burrow" => 20_000_000
}

p nfl_roster_salaries.length # The total length of a hash is the number of key-value pairs

# The values can be any kind of Ruby object, for example, it's possible to have a mapping of a string to
# something like a number or a boolean or an array or even another hash.

nfl_roster = {
  "Kansas City Chiefs" => ["Patrick Mahomes", "Travis Kelce"],
  "Los Angeles Rams" => ["Matthew Stafford", "Aaron Donald", "Cooper Kupp "]
}

p nfl_roster

# How to extract a value from a hash using it's key?
# The syntax is exactly the same as pulling out an element from an array with its index position, by using a pair
# of square brackets []. The difference is that in an array the index position is automatically implicitly generated.
# With hashes, our keys are chosen by us, so the extraction identifiers habve been chosen by us.

p nfl_roster_salaries["Patrick Mahomes"]

# The value is referenced not by its position, not by the idea of order (like an array), but by a key, an identifier.
# The key must be unique!
# We can use two equal keys inside a hash, but that will raise a warning, and the final value will overwrite
# the first one. But we dont want duplicate keys in a hash.

p nfl_roster_salaries["Joe Burrow"]
p nfl_roster["Los Angeles Rams"]

# If we try to extract a key that doesn't not exit will get a nil object.
p nfl_roster_salaries["Tom Brady"]

# Atention to the case sensitiveness of Ruby, we have to write the key out exactly as it is;

# Fetch method - allows as to pull out a value by it's key:
p nfl_roster_salaries.fetch("Josh Allen")

# But, different from the square brackets, if we use the fetch method to try to pull a value from a key that doesn't
# exist, we're going to get a Ruby exception.

# Otherwise, the fetch method accepts a second argument, that represents the fallback/default value, to provide in the
# scenario that that key does not exist:
p nfl_roster_salaries.fetch("Josh Nonsense", 0)
# We´re only going to fallback to the value passed as second argument, if the key does not exist;
