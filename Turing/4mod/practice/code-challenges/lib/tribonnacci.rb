def tribonacci(signature, n)
  if n == 0
    return []
  elsif 
    n <= 2
    return [1]
  end

  until signature.count == n
    element = signature.last(3).sum
    signature.push(element)
  end
  signature
end