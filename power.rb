def power base, exponent
  result = 1
  exponent.times { result *= base }
  result
end
