# first attempt

def circle_area(r)
 pi = 3.14159265359
  if r.class == String
    false
  elsif r.negative? || r == 0
    false
  else
    area = pi * r**2
    area.round(2)
  end
end