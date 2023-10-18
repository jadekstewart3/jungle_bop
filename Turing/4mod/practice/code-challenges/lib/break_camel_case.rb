# def solution(string)
#   modified_string = ""
#   string.each_char.with_index do |char, i|
#     if char == char.upcase
#       modified_string << " "
#     end
#     modified_string << char
#   end
#   modified_string
# end

#other solutions
def solution(string)
  string.gsub /([A-Z])/, ' \1'
end
#when an uppercase letter is found it captures it, 
# in replacement string it inserts a space

def solution(string)
  string.chars.map { |s| s == s.downcase ? s : " #{s}" }.join
end