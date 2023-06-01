#write method that finds the next palindrome
#no floats
#no negs

##take initial integer reverse and check if its equal 
#if it is equal return it if not add one and repeat
# do I need to count zeros in front

# def  find_next_palindrome(int)
#   unless int == int.to_s.reverse.to_i
#     int + 1
#   end
# end

#solution without using reverse

def find_next_palindrome(int)
  unless int == int.to_s.chars.reduce { |x, y| y + x }
    int + 1
  end
end