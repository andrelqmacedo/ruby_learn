# How to extract multiple elements from an array
# The syntax is identical to extracting multiple elements from a string

sesame_street = [
  "Elmo",
  "Big Bird",
  "Cookie Monster",
  "Bert",
  "Ernie",
  "Oscar"
]

# The first number in the square brackets represents the starting index (where we´d like to start pulling elements from)
# The second number represents the number of array elements to pull out
p sesame_street[0, 3] #Starts at index 0, and pull out 3 total elements, into a new brand array

p sesame_street[2, 4]

# No matter wich number in the index position, you're always going to get back an array

p sesame_street[3, 1]

# If we extend past the end of the array, Ruby will pull as much as it can, wich means it will go to the remainder of the array, everthing that it can

p sesame_street[3, 10]

# The slice method will work in the same way

p sesame_street.slice(2, 4)
p sesame_street.slice(3,1 )

# The syntax for overwriting is also going to me the same

sesame_street[3, 2] = ["Stinky", "Kermit"]
p sesame_street

# The number of values on the right hand side does not have to equal the number of original index positions
sesame_street[3, 2] = ["Bert", "Ernie", "Julia"]
p sesame_street
