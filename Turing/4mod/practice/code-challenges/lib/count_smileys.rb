
# def count_smileys(array)
#   count = 0
#   array.each do |face|
#     if face.match(/[:;][-~]?[)D]/)
#       count += 1
#     end
#   end
#   count
# end

## notes and alternat solutions
# =~ is known as the match operator, can be used to match a string against regex
## codewars solution
# def count_smileys(arr)
#   arr.count { |e| e =~ /(:|;){1}(-|~)?(\)|D)/ }
# end

##my refactored solution
def count_smileys(array)
  array.count { |face| face =~ /[:;][-~]?[)D]/ }
end