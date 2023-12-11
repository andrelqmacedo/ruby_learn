# We're going to introduce two more modules available in Ruby, but different from the Math module, these two
# are not automatically available. We actually need to import them into our program in order for us to be able to use them.

# The reason behind this iif Ruby tries to load all of its available functionality all at once, that would slow down our program.

require "uri"
require "net/http"

p URI.class
p Net.class

uri = URI.parse("https://www.google.com")

p uri.class

# To access method we use the dot (.) but for constants and classes we use the double colon (::)
p Net::HTTP.get(uri)

# We're actually going to print out here what the return value of this 'get' class method is going to be id the HTML
# that's returned by Google.

# It's important to notice that, whenever we import modules, these modules may also import other modules
# in their own code.
