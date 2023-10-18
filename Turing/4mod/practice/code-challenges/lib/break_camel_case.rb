def solution(string)
  modified_string = ""
  string.each_char.with_index do |char, i|
    if char == char.upcase
      modified_string << " "
    end
    modified_string << char
  end
  modified_string
end