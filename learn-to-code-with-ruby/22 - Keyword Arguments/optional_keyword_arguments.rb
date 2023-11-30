# In order to have a optional keyword argumet we need to provide a fallback value, i.e, a value for Ruby to
# utilize in the scenario that the invocation does not provide one.

# The way to specify the default/fallback value is right after the colon.

def sum(a: 1, b: 1) # In this case, we say that the invocation can provide 'a:', but if it doesn't provide 'a:' the
                    #value fallback to 1.
  a+b
end

p sum

# p sum(2, 3) => It'll throw an exception, because we didnt define whos is 'a:' and whos 'b:'

p sum(a: 5)
p sum(b: 7)
p sum(a: 2, b: 8)
p sum(b: 10, a: 2)
