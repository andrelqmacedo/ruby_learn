# There are two alternative ways to utilize the 'begin' and 'rescue' constructs in Ruby:

# The first option is within our method body
# as it turns out, the 'begin' keyword is actually optional, i.e, we can exclude it if we want to.
# That's because within the method body, Ruby is going to assume a certain boundary. The method is already a
# certain execution enviroment with predefined collection of code that can go wrong, so we can just write our regular
# method code directly within the method body and then add on the 'rescue' keyword afterwards without requiring
# the 'begin' keyword at all. It's a slightly different syntax, but it accomplishes the exact same result.
# Remember that, with the 'begin' keyword we have a complementary 'end' keyword, that should be removed as well.
# And then, we should get rid of the identation created by the 'begin' (SHFT + TAB to unindent)

def sum(a, b)
  a + b
rescue TypeError => e
  a = a.to_i
  b = b.to_i
  retry
rescue NoMethodError => error
  puts "Can't solve this, sorry"
ensure
  puts "I´m always going to run"
end

puts sum(3, 5)
puts sum(3, "5")
puts sum("3", 5)
puts sum(nil, nil)


# Another thing tha we can do is actually use the 'begin' keyword at the top level of our Ruby file, so it doesn't
# have to live within our Ruby method.
# We can still attempt to rescue from the top level of our Ruby program from 'main thread of execution'

def sum_2(a, b)
  a + b
end

begin
  sum_2(3, "5")
rescue TypeError => e
  puts "One of the types is not valid"
rescue NoMethodError=> e
  puts "Some method you're trying to invoke does not exist"
ensure
  puts "Ok, wrapping thing up."
end
