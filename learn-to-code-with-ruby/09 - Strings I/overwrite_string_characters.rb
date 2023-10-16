# how to overwrite one or more characters in a string
# strings are mutable, capable of change

thing = "rocket ship"

thing[0] = "p"
puts thing

thing[1] = "a"
puts thing

thing[9] = "o"
puts thing

fact = "I love blueberry pie" #raspberry

fact[7, 4] = "rasp"
puts fact
fact[7, 4] = "red"
puts fact
