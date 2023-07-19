def flatten(array)
  flattened = []
  array.each do |element|
    if element.is_a?(Array)
      flattened.concat(flatten(element))
    else
      flattened << element
    end
  end
  flattened
end