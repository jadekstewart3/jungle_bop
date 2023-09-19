 DICTIONARY = {
                  0 => "Zero",
                  1 => "One",
                  2 => "Two",
                  3 =>"Three",
                  4 =>"Four",
                  5 => "Five",
                  6 => "Six",
                  7 => "Seven",
                  8 =>"Eight",
                  9 => "Nine"
    
                }
# my first attempt

# def switch_it_up(number)
#   DICTIONARY.include?(number) ? DICTIONARY[number] : false
# end

NUMBERS_ARRAY = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]

def switch_it_up(number)
  NUMBERS_ARRAY[number]
end