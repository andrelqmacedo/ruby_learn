# Freeze method - makes an object imutable
# It´s impossible to modify the object in the program, almost as a safety mechanism that prevents
# you from accidentiatlly mutanting an object and lasts for the entire durantion of the program.
# Once we freeza an object, we cannot unfreeze it, it stays frozen throughout the entire program
# If any bit of the code attempts to mutate it, Ruby will raise an exception;

name = "Andre".freeze
hobbies = ["Coding", "Sushi"].freeze

# name << " the Genius" => can't modify frozen String, FrozenError exception
#hobbies << "Winning" #  => can't modify frozen Array, FrozenError exception

# This is also going to include bangs methods, that intrinsically try to mutate an an existing object
#name.upcase! # => `upcase!': can't modify frozen String, FrozenError exception


# When we call the dup or clone methods on a frozen string, there's going to be a different behaviour,
# and that's whny this two methods will exist with different names

# dup method - the copy you get back is not going to be frozen
name_dup = name.dup
name_dup << " the Genius "
p name_dup
puts

hobbies_dup = hobbies.dup
hobbies_dup << "Winning"
p hobbies_dup

# clone method - we're still getting a copy of the said object, but that copy is also going to be frozen
name_clone = name.clone
name_clone << "The Infamous" # since the copy is also frozen, we're going to get the exact same frozen error exception

hobbies_clone = hobbies.clone
hobbies_clone << "Winning" # => Can't modify an frozen array
