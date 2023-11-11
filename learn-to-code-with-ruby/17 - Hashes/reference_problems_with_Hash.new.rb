# When we use the Hash.new syntax, it's possible to encounter a problem, that is:
# 


# Remember that the argument passed in the Hash.new() method represents what Ruby will
# give to you when a key does not exist
team_members = Hash.new([]) # in this case, an empty array

p team_members["Buccaneers"]
p team_members

# After we acess that key, the hash has not been modify in any way
# So, a look in the variable 'team_members' will show an empty hash

team_members["Buccaneers"] << "Tom Brady" 
p team_members["Buccaneers"]

# In the example bellow, although we have shovel the string "Tom Brady", 
# we still haven't added anything to our actual team member's hash

p team_members["Buccaneers"]
# When we acess a key that does not exist, we'll get back the same single array object
# In this case, an empty array;
# But at this point, we modify the array, so it'll give as us back an array with the string "Tom Brady"

team_members["Buccaneers"] << "Mike Evans"
p team_members["Buccaneers"]
p team_members

# At this point, we have added strings to the array, but have not passed that array into the hash
# So the array continues to be empty, but the array, the object passed as default, it's not empty anymore
# It has 2 strings inside it. 

# That will create a problem in the future, 'cause if we try to acess
# an key that does not exist, Ruby will point to the same array that has been modified.
p team_members["Patriots"]

# So, how can we solve this problem?

# One way is to provide the Hash.new() with a block, so now
# Rather than referencing the same singular array, it's going to run
# whatever we provide inside the block
team_members = Hash.new do |hash, key|
  my_array = []
  hash[key] = my_array
end

p team_members["Patriots"]

# But this will create another problem! 
# To solve it, we should provide two block variables, the first one the hash that
# We will create, and the second one represent the actua key that you're searching for.


p team_members["Buccaneers"]
p team_members

