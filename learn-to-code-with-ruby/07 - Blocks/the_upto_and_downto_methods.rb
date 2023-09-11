5.upto(10) { |current| puts "The loop is now on #{current}" }

# '10' is an argument, a concrete value, as a integer
# the block pass dynamic code that is executed 

# the #upto method is a integer method that goes from the first value passed to the one passed as an argumet
# the #downto method functions in the same way, but goes from above to bellow
# In both method´s the values of me method invocation and the argument are INCLUSIVE

6.downto(1) do |count|
  puts "The current position in the loop is #{count}"
  puts "The current loop position squared is #{count ** 2}"
end

99.downto(1) do |num| 
  puts "#{num} bottles of beer on the wall, #{num} bottles of beer"
  puts "Take one down, pass it around"
  puts "#{num - 1} bottle of beer on the wall"
end