  #only ever have 3 arrays
  #numbers WILL NOT REPEAT IN SINGLE ARRAY
  #in order to be returned num must be present in all 3 arrays


  #splat args
  #flatten them within array
  #tally
  #return num if value > 2
  #get rid of nil values

  def find_matches(*args)
    arr = args.flatten
    matchers = arr.tally.map do |num, value|
      num if value > 2
    end
    matchers.compact
  end
