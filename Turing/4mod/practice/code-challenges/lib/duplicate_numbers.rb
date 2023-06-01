# def duplicates(arr)
#   if arr.uniq.size == arr.size
#     false
#   else
#     true
#   end
# end

##return the intger

def duplicates(nums)
  grouped = nums.group_by { |num| num }
  grouped.find do |k, v|
    k if v.size.even?
  end[0]
end
# def duplicates(nums)
#   # grouped = nums.group_by { |num| num }
#   nums.tally.find do |k, v|
#     k if v.size.even?
#   end
# end
