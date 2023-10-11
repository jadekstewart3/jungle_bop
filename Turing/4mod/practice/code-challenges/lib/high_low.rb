#first attempt

# def high_and_low(numbers)
#   string_array = numbers.split
#   numbers_array = string_array.map { |str| str.to_i }
#   "#{numbers_array.max} #{numbers_array.min}"
# end

#refactored
def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(" ")
end