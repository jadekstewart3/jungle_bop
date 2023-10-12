#my attempt

def disemvoweled(str)
  str.scan(/[^aeiouAEIOU]/).join
end

#other solutions

def disemvowel(str)
  str.delete('aeiouAEIOU')
end