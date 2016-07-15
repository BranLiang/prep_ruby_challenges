def uniques array
  result = []
  array.each do |x|
    unless result.include?(x)
      result << x
    end
  end
  result
end
