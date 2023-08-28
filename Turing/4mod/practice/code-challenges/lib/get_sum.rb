def get_sum(a, b)
  #parallel assignment
  a, b = b, a if a > b
  (a..b).sum
end