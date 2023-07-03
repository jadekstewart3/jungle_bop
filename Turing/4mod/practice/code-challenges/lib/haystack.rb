def find_needle(haystack)
  haystack.each_with_index do |element, i|
     if element == "needle"
     return "found the needle at position #{i}"
    end
  end
end

def find_needle(haystack)
  haystack.each_with_index { |element, i| return "found the needle at position #{i}" if element == "needle" }
end

#other humans solutions
# def find_needle(haystack)
#   "found the needle at position #{haystack.index('needle')}"
# end