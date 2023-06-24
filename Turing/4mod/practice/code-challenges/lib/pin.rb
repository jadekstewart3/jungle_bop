def validate_pin(pin)
  # require 'pry'; binding.pry
  if pin.empty?
    false
  elsif pin.match?(/^\d{4}$/) || pin.match?(/^\d{6}$/)
    true
  else
    false
  end
end