# merge method - combine two hashes together, into a new hash

market = {garlic:"3 cloves", milk: "10 gallons"}
kitchen = {bread: "2 slices", milk: "100 gallons"  }

# These two hashes have different keys, and they also have keys in common

p market.merge(kitchen)

puts
# When we have duplicates key-value pairs, the one that will "win out" or appear in the merged hash, is the one inside the
# hash passed as an argument, in this case the 'kitchen' hash. Let´s see:

p kitchen.merge(market)

puts
# In addition, the return value of the merge method is a brand new hashm so neither one of our original two hashes
# is going to be modified.

p market
p kitchen

# If there are no duplicates, that's no ptoblem, Ruby will simple include everything in the final mix.

puts
# And more, there's a complementaty merge! method, and that will permanently modify the hash that the method
# is called upon:
market.merge!(kitchen)
p market
# So we permanently modify the market hash
