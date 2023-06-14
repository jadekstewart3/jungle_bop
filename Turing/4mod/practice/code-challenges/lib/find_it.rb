def find_it(seq)
  seq.tally.each do |k, v|
    return k if v.odd?
  end
end
#alternate solutions
# def find_it(seq)
#   seq.detect { |n| seq.count(n).odd? }
# end
## notes on detct
## returns first for which the block is true alias: find

#note to remember that count can take an argument
# def find_it(seq)
#   seq.uniq.each do |val|
#     return val if seq.count(val).odd?
#   end
# end

## do it without tally
# def find_it(seq)
#   hash = Hash.new(0)
#   seq.each do |num|
#     hash[num] += 1
#   end

#   hash.each do |v, k|
#     return v if k % 2 != 0
#   end
# end