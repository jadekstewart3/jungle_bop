#array of arrays
#all from first
#last from second
#all from third.reverse
#rest from second

##are the arrays always going to be the same size?
#.each with index

def snail(array)
    arr = []
   array.to_a.empty? ? (return arr.flatten) : arr << array.shift
  snail(array.transpose.reverse)
end