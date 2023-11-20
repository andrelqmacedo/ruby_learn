# Declare a Musical class that includes "name",
# "cast", and "duration" instance variables.
# Feel free to initialize the instance variables
# to whatever values you'd like.

class Musical
  def initialize
    @name = "Cats"
    @cast = ["Daniel Gaymon", "Christopher Gurr", "Christine Cornish Smith", "Leona Lewis"]
    @duration = 140
  end
end

my_musical = Musical.new

p my_musical
