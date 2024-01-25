# Gems
# A gem is an add-on, an extension or expansion for Ruby.
# It´s a bundle of regular Ruby code, i.e, classes, modules, methods
# that other developers have written and published for us to use.
# This reduce the amount of code that we have to write.

# Gems exist to solve problems in a specific domain, or a specific
# field of endeavor that other developers are likely to benefit from.

# It's important to notice the Ruby on Rails is a gem that solves the problem
# of building a back end: it´s a web development framework for building a website.

# There are gems for specialized topics, a specialized Ruby code that a
# developer or a company has written that they thought would be valuable
# to release publicly online, so other developers can download it and use it themselves;

# visit rubygems.org

# Examples of gems: faker, finance, rails, et.

# Dependecies
# A dependency is something that a gem depends on in order to work,
# i.e, just another gem. Gems can rely in another gem.


# How can we acess and use the gem package manager that comes pre-installed with Ruby?
# The 'gem' software program is what we use to fetch and download a ruby gem from the ruby gem´s servers;
# On the terminal, we can run these commands
      # To verify if the gem program is installed: $ gem -v
      # To update the gem software itself to the latest version: $ gem update --system
      # To install a gem: $ gem install <name_of_the_gem>

# Gemfile: it's a special file, which is going to list all of the dependecies of
# our project. We can rely on this file to download all of our project dependencies,
# in other words, all of our project's gems, with just one command.
# The Gemfile is just a plain text file, or essentially a Ruby file, where we declare
# all of our project's dependencies.
# In a typical code base, this file is where developers are going to write all
# of the gems that the project needs, along with a lockdown version number, a family
# of version numbers.
# So, if we run this code in the future, and we download all of the dependecies
# specified in the Gemfile, we're going to be guaranteed to get the right version
# of the gem rather than whatever happens to be the most up to date version.
      # At the very top of the Gemfile we're going to specify where we would
      # like to download our gems from.
      # For each gem that we  want to add as a dependency for the current project,
      # we're going to use the word 'gem' and then provide the name of the gem as a String
                # gem "faker"
      # The second argument, after the comma, is another string where we
      # can write the specific version number that we want to declare.
                # gem "faker", "3.2.2"
      # Before the version number, in order to add flexibility, we can put
      # a tilde (~) and a greater then sign (>) and add a space. This
      # essentially says "this version or any version higher within this level of specificity".
      # It's important to notice that as we specify the 3 numbers of the version number
      # (major version, minor version and patch version, respectvlly) the Gemfile is going to search
      # for anything in this family, or this category of version, as long as it doesn't violate
      # the major or the minor version. And it works for the minor version number as well:
                # gem "faker", "~> 3.2.0" - 3.2.1 is valid / 3.2.6 is valid / 3.3.0 is not valid / 4.0.5 is not valid
                # gem "faker", "~> 3.2" - 3.2 is valid / 3.3 is valid / 3.4.5 is valid / 4.0 is not valid

# The command to download all of the dependencies in the Gemfile is: $ bundle instal
# Bundle is the program that's going to look for a Gemfile in the current directory,
# find all of the dependencies, including all of theis sub dependencies, figure out everything
# we need to dowload and do that all in a single command.
