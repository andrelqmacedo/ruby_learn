puts "straw".reverse


#Iteration based solutiuon
# def reverse(text)
#   first_index = 0
#   last_index = text.length - 1
#   reversed_text = ""

#   while last_index >= first_index
#     reversed_text << text[last_index]
#     last_index -= 1
#   end

#   reversed_text
# end

# puts reverse("straw")


#Recursive based solution
def reverse(text)
  return text if text.length == 1
  last_char = text[-1]
  remainder = text[0, text.length-1]
  last_char + reverse(remainder)
end

puts reverse("barba")