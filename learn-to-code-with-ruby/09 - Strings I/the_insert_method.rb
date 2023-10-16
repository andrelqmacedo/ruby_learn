# Insert method - allows us to target a index positions and add a character
# Otherwise, the insert method adds the new character at that index position without replacing any of the existing characters

typo = "GeorgWashington"
typo.insert(5, "e ")
puts typo

typo = "George Washingto"
typo.insert(-1, "n")
puts typo