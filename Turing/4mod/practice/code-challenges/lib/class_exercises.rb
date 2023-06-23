#write a method that takes the argument of an array and adds the numbers together
#do I need to worry about non integer elements? nil?
# floats? negative numbers? 
#will it ever be nested?

# def get_sum(arr)
  # call .sum on the array
  # no .sum? iterate over array add first number to next
  # possibly using reduce? 
  #recursive call using pop, shift? until array length == 0
#   arr.sum
# end

#factorial using recursion
#Write a recursive function that calculates the factorial of a number.
def factorial(int)
  #take the integer and times it by one less of itself everytime until int == 0
  return 1 if int == 1

  int * factorial((int - 1))
end

#reverse the string using recursion

def reversed_string(string)
 
end