#my attempt

# def disemvoweled(str)
#   str.scan(/[^aeiouAEIOU]/).join
# end

#other solutions

# def disemvoweled(str)
#   str.delete('aeiouAEIOU')
# end

def disemvoweled(str)
  str.tr('aeouiAEOUI', '')
end