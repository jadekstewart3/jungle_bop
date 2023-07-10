def merge(nums1, m, nums2, n)
  new_nums =  nums1.concat(nums2)
   non_zero_nums =new_nums.reject do |num|
      num.zero?
   end
   non_zero_nums.sort
end