def find_target(payload, target)
  payload.each do |first_number|
    second_number = target - first_number
    if payload.include?(second_number)
      return [first_number, second_number] unless second_number == first_number
    end
  end
  []
end