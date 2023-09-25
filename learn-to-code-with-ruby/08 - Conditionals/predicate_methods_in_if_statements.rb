if 5.odd?
  puts "The number is indeed odd"
end

#Predicate methods end with a question mark and returns a boolean

word = "kangaroo"

if word.include?("zebra") #statement evaluated to false, so the code inside de if and end will not execute
  puts "That substring does exist."
end