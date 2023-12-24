# The regular dot ( . ) stands for a wildcard, which means any character whatsoever
# It'll match any character in existence: a letter, a digit, a symbol, a space, etc.

voicemail = "I can be reached at 555-123-4567 or regexman@gmail.com"

p voicemail.scan(/./)

puts
# This special symbol becomes very powerful when its combined with other characters or other search sequences.


p voicemail.scan(/.e/) # What this is saying is: any character whatsoever, followed by the letter E

p voicemail.scan(/.e./) # This one is: any character, followed by an E, followed by any character

# Let's say we're trying to parse out a phone number from a piece of text, but the phone number is coming in
# differently each time, maybe the phone digits a separeted by dashes or slashes or dots, we don't know.
# Bu we do know that we're going to have a consistent pattern of three numbers, then something, then 3 numbers,
# then something, then 4 numbers. We could write a RegEx expression using the wildcard:

p voicemail.scan(/\d{3}.\d{3}.\d{4}/)

# But what if we have an inconsistent number of characters in between the digits?
voicemail_2 = "I can be reached at 555   123 4567 or regexman@gmail.com"
p voicemail_2.scan(/\d{3}.+\d{3}.+\d{4}/)
# In summary, what our search pattern is saying is: find me exactly 3 numbers, then any number of any character,
# then 3 digits, then any number of any character, then 4 digits

# The special part of regex is that even if you're string is different every time, is going to be able to pull
# out the part that matters.


# Otherwise, when we're literally looking for a dot, what we need to do is prefix the dot with a backslash:
p voicemail.scan(/\./)
