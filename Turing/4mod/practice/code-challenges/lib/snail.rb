#array of arrays
#all from first
#last from second
#all from third.reverse
#rest from second

##are the arrays always going to be the same size?
#.each with index

def snail(arr_matrix)
  arr_matrix.each_with_index do |arr|
    require 'pry'; binding.pry
    snail_arr = []
    if arr[0] 
      snail_arr << arr
    elsif arr.each_with_index do |num|
      if num[2] 
        snail_arr << num
      elsif num == 8 
        snail_arr << num
      elsif num == 7 
        snail_arr << num
      elsif num == 4
        snail_arr << num
      else
        snail_arr << num
      end
    end
  end
  snail_arr
end
end