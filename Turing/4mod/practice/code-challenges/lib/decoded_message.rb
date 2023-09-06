#my attempt
# DICTIONARY = {
#   "a" => "z",
#   "b" => "y",
#   "c" => "x",
#   "d" => "w",
#   "e" => "v",
#   "f" => "u",
#   "g" => "t",
#   "h" => "s",
#   "i" => "r",
#   "j" => "q",
#   "k" => "p",
#   "l" => "o",
#   "m" => "n",
#   "n" => "m",
#   "o" => "l",
#   "p" => "k",
#   "q" => "j",
#   "r" => "i",
#   "s" => "h",
#   "t" => "g",
#   "u" => "f",
#   "v" => "e",
#   "w" => "d",
#   "x" => "c",
#   "y" => "b",
#   "z" => "a",
# }

# def decode(message)
#   decoded = []
#   message.chars.each do |char|
#     if char == " " 
#       decoded << char 
#     else
#       DICTIONARY.each do |k, v|
#         decoded << v if char == k
#       end
#     end
#   end
#   decoded.join
# end

#using .tr
ALPHABET = Array('a'..'z').join

def decode(message)
  message.tr(ALPHABET, ALPHABET.reverse)
end