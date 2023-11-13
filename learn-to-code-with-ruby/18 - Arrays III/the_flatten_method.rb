# flatten method - create a 1-dimensional array (no nested arrays), which means it removes all nested arrays within our
# original array, as it extracts all elements, no matter how nested they are up into one single dimensional array

party_attendees = [
  "Joe",
  ["Bob", "Keith", "Cam"],
  "Holly",
  ["Rick", "Molly"]
]

p party_attendees.flatten

# The flatten method will put all elements into the same dimension. No matter how deep the nested arrays get, Ruby ]
# is going to figure it out and it's going to give us banck that single one-dimensional array, consisting of all the elements.
