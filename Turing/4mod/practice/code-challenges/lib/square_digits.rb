
# def square_digits(num)
#   num.to_s.chars.map do  |int|
#     int.to_i * int.to_i
#   end.join.to_i
# end

#refactored but code isnt as DRY as I would like
def square_digits(num)
  num.to_s.chars.map { |int| int.to_i * int.to_i }.join.to_i
end