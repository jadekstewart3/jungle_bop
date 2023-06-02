#In this challenge you are given an array of unique integers. Your job is to return all the possible combinations of unique pairs (2 integers only). No duplicate pairs are allowed

##  #Example 1
    # Input: [1, 2, 3, 4]
    # Output: [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]

    #take each element and pair it with every other element once

    # possible questions to ask 
    ## will there be any nil values? If so what should they return as?
    ## will there ever be any non integer values
    ## will there ever be any float values? how should I handle that?

    def subsets(arr)
      #iterate over each element and pair it with the next until we reach the end of the array
      #rinse and repeat
      #possible enumerables each with index?
      #map
      pairs = []
      arr.each_with_index do |int1, i|
        arr[i + 1..-1].each do |int2|
          pairs << [int1, int2]
        end
      end
      pairs
    end
