# A block varuiable its a variable that belongs to a block
# The variable no longer exists as soon as the block is done executing

# We shoulb be aware that in the method #times the variable is the running count, i.e, the current iteration in wich the code
# is at running time

3.times { |count| puts count } # The variable goes inside the vertical pipes in the beginig of the block

#The scope of the variable 'count' is the block in which it was declared, so 'count' will not exist in the top level 
#of the program

5.times do |running_count|
  puts "The current count is #{running_count}"
  puts "Andre is awesome?"
end

#The variable name is up to the programmer, but what they represent will be dependent on the method´s original
#representation (what the developer who wrote the method decided to pass to each block )