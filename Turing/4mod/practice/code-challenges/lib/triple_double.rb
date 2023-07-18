#first attempt
# def triple_double(num1, num2)
#   triples = num1.to_s.chars.chunk_while do |a, b| 
#     a.to_i == b.to_i
#   end
 
#   doubles = num2.to_s.chars.chunk_while do |a, b| 
#     a.to_i == b.to_i
#   end

#   trips = triples.find_all do |arr|
#     arr.count == 3
#   end

#   dubs = doubles.find_all do |arr| 
#     arr.count == 2
#   end
  
#   dubs.each do |arr|
#     if dubs.include?(trips[0])
#       return 1
#     else 
#       return 0
#     end
#   end
# end

# def triple_double(num1, num2)
#   triples = num1.to_s.chars.chunk_while { |a, b| a == b }.select { |arr| arr.size == 3 }
#   doubles = num2.to_s.chars.chunk_while { |a, b| a == b }.select { |arr| arr.size == 2 }
  
#   triples.each do |arr|
#     if doubles.any? { |double| double.first == arr.first }
#       return 1
#     end
#   end
  
#   return 0
# end

##refactored to reduce number of iterations

# def triple_double(num1, num2)
#   triples = []
#   doubles = []
  
#   num1_digits = num1.to_s.chars
#   num2_digits = num2.to_s.chars
  
#   (0...num1_digits.size - 2).each do |i|
#     if num1_digits[i] == num1_digits[i+1] && num1_digits[i] == num1_digits[i+2]
#       triples << num1_digits[i]
#     end
#   end
  
#   (0...num2_digits.size - 1).each do |i|
#     if num2_digits[i] == num2_digits[i+1]
#       doubles << num2_digits[i]
#     end
#   end
  
#   triples.each do |digit|
#     if doubles.include?(digit)
#       return 1
#     end
#   end
  
#   return 0
# end

##solution using regex

# def triple_double(num1, num2)
#   num1.to_s.scan(/(.)\1\1/).any? { |n| /#{n}{2}/ === num2.to_s } ? 1 : 0
# end

#simpler solution using .include?

def triple_double(num1,num2)
  (0..9).each do |i| 
    
    return 1 if num1.to_s.include?(i.to_s*3) && num2.to_s.include?(i.to_s*2)
  end
  0
end