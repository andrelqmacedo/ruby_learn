# 'scan' method - find all occurences of a RegEx search pattern

# The 'scan' method does not give the index position, it actually gives the concrete match that matches what the regex
# search pattern declares to look for.

voicemail = "I can be reached at 555-123-4567 or regexman@gmail.com"

p voicemail.scan(/e/)  # We're going to get an array of all the matches of that search pattern
p voicemail.scan(/re/)
p voicemail.scan(/[re]/)  # If we use the square brackets and put the letters inside it, the regex pattern will
                          # search for all the combinations of that letters inside the string
