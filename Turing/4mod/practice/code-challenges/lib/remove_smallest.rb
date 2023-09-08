
def remove_smallest(array)
  if array.empty? 
    []
  else
    smallest = array.min
    array.slice!(array.index(smallest))
    array   
  end
end