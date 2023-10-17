# Loop - a series of instructions that is repeated until a termination condition is reached;

#3.times{ print "Hello" } the times method is a kind of loop

# Obviously, we can design our own loops:

#While loop: is going to execute as long as a given condition is true.

#while true
# do this
#end

count = 1

while count < 10 #while this condition is true
  puts count #ruby will execute the code inside the block
  count += 1 
end 

puts 
puts count #the value of count will be 10, because it was incremented in the final iteration and then compared, but the condition was false, do it didnt print it
puts 

letters = "a"

while letters.length < 5
  puts letters 
  letters << "a"
end

# We must always make a counter or do something that will test the condition to terminate the loop
# If you dont, it'll be create an infinite loop