def bmi(weight, height)
  bmi = weight / (height**2)
  if bmi <= 18.5
    "Underweight"
  elsif bmi <= 25.0
    "Normal"
  elsif bmi <= 30.0
    "Overweight"
  else
    "Obese"
  end
end