def sort_by_length(array)
  sized = array.group_by { |el| el.size }
  sorted = sized.sort.map { |arr| arr[1] }.flatten
end