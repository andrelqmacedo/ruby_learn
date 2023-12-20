start_of_year = Time.new(2025, 1, 1)

puts start_of_year

# So, the way we actually add or subtract from time is using the regular adition and subtraction operators (+ and -)
# But the thing that makes it interesting is we actually add or subtract by seconds in this Ruby approach

# There are more elegant methods to accomplish addition and subtraction and all kinds of time related operations,
# specially in frameworks as Ruby on Rails.

p start_of_year + 60  # Ruby understands that as saying "get a new Time object that is going to be 60s foward in
# the future"


# If we want to add minutes, we need to find the corresponding numbers of seconds in that number of minutes

p start_of_year + (60 * 60)   # 60 minutes multiplied by 60s is one hour
p start_of_year + (60 * 60 * 24) # An hour multiplied by 24 gives us a day ahead, foward, into the future
p start_of_year + (60 * 60 * 24 * 45)  # A day multiplied by 45 moves us foward 45 days


# Similarly, if we replave the + sign for a - sign, we will move backwards in time
p start_of_year - (60 * 60 * 24 * 90)
p start_of_year - (60 * 60 * 24 * 365)
