# first attempt

# def circle_area(r)
#  pi = 3.14159265359
#   if r.class == String
#     false
#   elsif r.negative? || r == 0
#     false
#   else
#     area = pi * r**2
#     area.round(2)
#   end
# end

#refactor

# def circle_area(r)
#  pi = 3.14159265359
#  return false if r.is_a?(String) || r <= 0
  
#   area = pi * r**2
#   area.round(2)
# end

#refactor 2
def circle_area(r)
  pi = 3.14159265359
  r.to_f > 0 ? (pi * r**2).round(2) : false
end