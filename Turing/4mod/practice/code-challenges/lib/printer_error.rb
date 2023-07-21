# first attempt
#this is faster?

def printer_error(s)
  errors = []
  non_error_letters = ("a".."m")
  colors_used = s.chars
  colors_used.each do |letter|
    errors << letter if !non_error_letters.include?(letter)
  end
  "#{errors.count}/#{colors_used.count}"
end

#chat jeeps suggestions

# def printer_error(s)
#   error_count = s.scan(/[^a-m]/).count #scan and regex powerful af
#   "#{error_count}/#{s.length}"
# end

##can also use

def printer_error(s)
  "#{s.count('^a-m')}/#{s.length}"
end