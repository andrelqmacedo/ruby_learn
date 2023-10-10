# Strings that skretch across multiple lines - a paragraph, quotes, etc

# Here document / Here Doc
# The start identifier (MLS is this case, short for multiple line string) and end indentifier are chosen by the programmer

poetry = <<MLS
  What a day
    Today is just the day i die
  Then drink a beer
    And fasten you bell, across to hell
MLS
puts poetry

# Ruby will treat everything between the start identifier and the end indentifier literally, every space, character and etc will count and matter
# and will be treated as part of the 'poetry' String.


