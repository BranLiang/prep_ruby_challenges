def is_prime? value
  value.times do |x|
    if x > 1 && value % x == 0
      return false
    end
  end
  return true
end
