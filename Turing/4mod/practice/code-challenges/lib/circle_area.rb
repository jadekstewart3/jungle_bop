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

def circle_area(r)
 pi = 3.14159265359
 return false if r.is_a?(String) || r <= 0
  
  area = pi * r**2
  area.round(2)
end