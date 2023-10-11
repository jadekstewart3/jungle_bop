#first attempt

# VOWELS = ["a", "e", "i", "o", "u"]

# def get_count(input_str)
#   char_array = input_str.chars
#   present_vowels = []
  
#   char_array.each do |char|
#    present_vowels << char if VOWELS.include?(char) 
#   end
#   present_vowels.size
# end

## other humans clever solutions

# def get_count(input_str)
#   input_str.downcase.count("aeiou")
# end

# if an argument is given, counts the number of elements which equal obj using ==.
# String#count takes the characters you specify in the argument string and counts how many times any of those characters appear in the source string. It does not split the string into individual characters but counts occurrences of any of the characters specified in the argument string.

def get_count(input_str)
  input_str.scan(/[aeiou]/).count
end