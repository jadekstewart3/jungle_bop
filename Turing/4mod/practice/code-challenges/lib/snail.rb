#array of arrays
#all from first
#last from second
#all from third.reverse
#rest from second

##are the arrays always going to be the same size?
#.each with index

def snail(matrix)
  # result = []
  # array.empty? ? (return arr.flatten) : arr << array.shift
  # snail(array.transpose.reverse)

  # result << matrix.shift
  # unless matrix.count == 1
  #   snail(matrix.transpose.rotate(2))
  # end

  # p result.flatten
    result = []

    result << matrix.shift
    matrix.each { |array| result << array.pop }
    result << matrix.pop.reverse unless matrix.empty?
    matrix.reverse.each { |array| result << array.shift }

    result << snail(matrix) if !matrix.empty?
    result.flatten
end

# p snail([
#         #  [1, 2, 3, 4], 
#          [6, 7], 
#          [10,11], 
          
#   ])

# [1,2,3,4,8,12,16,15,14,13,9,5,6,7,11,10]