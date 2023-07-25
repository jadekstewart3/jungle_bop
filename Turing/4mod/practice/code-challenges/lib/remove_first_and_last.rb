#first attempt
# def remove_char(s)
#   array = s.chars
#   s = array.delete_at(0)
#   s = array.delete_at(-1)
#   s = array.join
#   return s
# end

#refactor

# def remove_char(s)
#   s.chars[1..-2].join
# end

#clever code wars solutions
def remove_char(s)
  s[1...-1]
end