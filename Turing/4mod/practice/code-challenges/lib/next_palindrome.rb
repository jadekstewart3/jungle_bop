#write method that finds the next palindrome
#no floats
#no negs

##take initial integer reverse and check if its equal 
#if it is equal return it if not add one and repeat
# do I need to count zeros in front

def  find_next_palindrome(int)
  unless int == int.to_s.reverse.to_i
    int + 1
  end
end

#solution without using reverse

# def find_next_palindrome(int)
#   unless int == int.to_s.chars.reduce { |x, y| y + x }
#     int + 1
#   end
# end

# x = first character in array
# y = second character in array
# def wtr(string)
#   string.chars.reduce do |x, y|
#     require 'pry'; binding.pry
#     y + x
#   end
# end
# switch the orientation of the letters being added together and bing bang moob

def reverse(string)
  new_arr = []
  arr = string.chars
  until arr.size == 0 
    char = arr.pop
    new_arr << char
  end
  new_arr.join
end
# when you dont have reverse or reduce

##cleanest ruby solution

def find_next_palindrome(arr)
  arr.combination(2).to_a
end

##notes on combination
#when invoked in a block yields all comibnations of length of elements from the array and returns the array itself