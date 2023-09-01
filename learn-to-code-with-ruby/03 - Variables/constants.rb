# In order to create a constant we capitalize the first letter, so if we try to chance this value
# Ruby will give us a warning
Pi = 3.14159 

#A common community convensiom is that if we´re using constants, we should capitalize the whole word
TAX_RATE = 0.07

puts Pi
puts TAX_RATE

TAX_RATE = 0.13 #WARNING: previous definition of "TAX_RATE" was here "0.07"