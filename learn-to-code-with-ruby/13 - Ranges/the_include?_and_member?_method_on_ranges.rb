# Three ways that we can check whether or not a value exists within a range

# include? method
alphabet = "a".."z" #inclusive

puts alphabet.include?("j")
puts alphabet.include?("z")
puts alphabet.include?("J")
puts

alphabet2 = "a"..."z" #exclusive
puts alphabet2.include?("z")

puts
# member? method - it's an alias for the include? method

puts alphabet.member?("g")
puts alphabet2.member?("z")


puts
# triple equals ===
# checks for inclusion

puts alphabet === "j"
puts alphabet === "z"
puts alphabet === "Z"
