def combinations array1, array2
  result = []
  array1.each do |a1|
    array2.each do |a2|
      result << (a1 + a2)
    end
  end
  result
end
