story = "Once upon a time in a land far, far away..."

#The first value is the starting index position to start pulling characters from
# The second value is the number of characters to pull out, how many to extract
puts story[5, 4]

puts story[0, 5] #it includes the space
p story[0, 5]

puts story[0, story.length]

puts

puts story.slice(5, 4)

puts story.slice(0, 5) #it includes the space
p story.slice(0, 5)

puts story.slice(0, story.length)