def factorial num
  result = 1
  (1..num).each { |x| result *= x }
  result
end
