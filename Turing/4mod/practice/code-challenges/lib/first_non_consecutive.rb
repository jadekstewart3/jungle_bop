
def first_non_consecutive(arr)
  arr.each_cons(2).detect do |a, b|
    return b if b != (a + 1)
  end
end