# Keyword arguments - allow invocation of a method to specify which parameters the arguments correspond to

# Which means they allow us to specify the parameter that arguments correspond to, when we actually invoke a method.
# It's a special Ruby feature that is present a lot in modern Ruby code.

class Candidate
  attr_reader :name, :age, :occupation, :hobby, :birthplace

  def initialize(details)
    @name = details[:name]
    @age = details[:age]
    @occupation = details[:occupation]
    @hobby = details[:hobby]
    @birthplace = details[:birthplace]
  end

end

# We must have in mind that the more parameters we start to introduce, the more complex it becomes, because we start
# becoming dependent on the order in which they have to be passed in. And we have to remember that order each time
# and not get it wrong

# To simplify this, a common old strategy is to reduce all of the parameters just down to one. We can utilize a hash,
# and the key will have the name of the variable we want to assign as a class variable.

senator = Candidate.new({
  name: "Mr. Smith",
  age: 53,
  occupation: "Banker",
  hobby: "Fishing",
  birthplace: "Kentucky"
})

p senator.name
p senator.age
p senator.occupation
p senator.hobby
p senator.birthplace

# This approach is advantegeous because:
#   1. We immediately have context as far as what value corresponds to what. Now we know that "Banker" is specifically the
#   occupation, and fishing is specically the hobby, because these values are written side by side with their hash keys.
#   2. Another advantage is, because we are using a hash, we are no longer committed to a single parameter list. We are
#   not obligated to provide five parameters in order, because we are acessing a hash by a key, and a key is just an unordered
#   label or identifier, so it doesn't matter the order we write these key value pairs.

# But here's still some problems with using a hash:
#   a. The first problem is that we can simply forget to provide a key. And that will ensure that that variable is instanciated
#   with a 'nil' value
#   b. The second problem is typos, because if we do not provide the correct 'key' name, we'll introduce another
#   'nil' value.
