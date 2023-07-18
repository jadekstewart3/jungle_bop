# def powers_of_two(n)
#  exponents = []
#   if n.zero?  ## dont need cause 2**0 == 1
#     exponents << 1
#   else
#     n.downto(0).each do |num|
#       exponents << num
#     end
#     products = exponents.map do |num|
#       2**num
#     end
#     products.sort
#   end
# end

## refactored
# def powers_of_two(n)
#   nums = n.downto(0).map { |num| num }

#   products = nums.map { |num| 2**num }

#   products.sort
# end


##cleaner imo
##this one is better - no .sort

def powers_of_two(n)   
  (0..n).map { |i| 2**i }
end

# def powers_of_two(n)
#   n.downto(0).map { |i| 2**i }.sort
# end