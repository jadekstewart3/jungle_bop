def get_sum(a, b)
  #parallel assignment
  # a or b = b, its a if a is greater than b
  a, b = b, a if a > b
  (a..b).sum
end

#could also [a,b].sort then reduce also using parallel assignment