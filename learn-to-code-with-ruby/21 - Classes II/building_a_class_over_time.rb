# One curious thing about class definition is that they can actually exist in multiple parts.
# Which means we can define the logic of a class definition in multiples class constructs.

class Book
  attr_reader :title, :author, :pages

  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

goosebumps = Book.new("Night of the Living Dummy", "R.L. Stine", 100)


class Book

  def read
    1.step(pages, 10) { |page| puts "Reading page #{page}" }
    puts "Done! #{title} was a great book"
  end
end

goosebumps.read

# So, we have two separete class definitions for the same Book class. Even though we created 'goosebumps' object before
# the definition of the 'read' method, Ruby is going to associate this class and it's new logic with the existing object.
# This way we are able to invoke the 'read' method even though we instantiated the 'goosebumps' object before.
# This kind od expansion or modification of our existing Book class.
# At last, a disclaimer: if we try to invoke the 'read' method before the chunk of code that defines it, we're going to
# get a exception of "NoMethodError"

# The important part is to know that Ruby class are remarkably flexible and open for extension.
