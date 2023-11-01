# max method - greatest value in an array
# min method - smallest value in an array

# The methods extract the maximum and minimum value

stock_prices = [434.12, 723.99, 84.12, 649.92]

p stock_prices.max
p stock_prices.min
puts

# When it comes to strings, Ruby will operate based on their alphabetical sorting order
# The string that is closest to the beginning of the alphabet is going to be considered the smallest one
# and the string that is closest to the end of the alphabet is going  to be considered the largest one
companies = ["Nike", "Microsoft", "Apple"]
p companies.max

# Nike is considered the largest string, because the N is closest to the end of the alphabet, further along than M,
# as well as A

p companies.min # => Apple

puts
# An empty array will return nil
p [].max
p [].min
