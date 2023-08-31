
def square_digits(num)
  num.to_s.chars.map do  |int|
    int.to_i * int.to_i
  end.join.to_i
end