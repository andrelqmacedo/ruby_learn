# Comparable module/mixin - is just a module that is injected into various classes in order to provide a behavior,
# to share behavior across different classes that don't necessarily fall into a perfect inheritance hierarchy;
# The Comparable module enables compariosn between objects, and that is operations like equality, inequality, less than,
# greater than, etc.

# The Comparable module is mixed in the Time class, in a way that any two Time objects are going to be comparable
# with a wide variety of operators and methods.

birthday = Time.new(2024, 8, 1)
summer = Time.new(2024, 6, 21)
independence_day = Time.new(2024, 7, 4)
winter = Time.new(2024, 12, 21)

puts birthday < summer
# This is going to return a boolean, that's going to reflect wheter or not birthday time comes before summer time.
# Less than represents smaller, which means, arrives before in the timeline

puts winter <= summer
puts winter > independence_day
puts winter >= birthday

# Also, Ruby is going to deem two time objects equal if they represent the exact same time, and by that
# we mean that every single detail of the time must be the exact same.
# They don't have to be the same object, but they need to be share the same year, month, day, hour and second.
puts birthday == Time.new(2024, 8, 1)
puts birthday != independence_day
puts independence_day.between?(summer, winter)
