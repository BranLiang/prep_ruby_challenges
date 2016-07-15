class Fixnum
  def divisible_by_7?
    self % 7 == 0 ? true : false
  end

  def divisible_by_11?
    self % 11 == 0 ? true : false
  end
end

def switch_direction direction
  direction == 1 ? -1 : 1
end

def people_modify number, people
  if number > people
    number - people
  elsif number < 1
    number + people
  else
    number
  end
end

def counting_game people, num
  direction = 1
  count = 1
  (1..num).each do |x|
    direction = switch_direction direction if x.divisible_by_7
    count += direction if x.divisible_by_11?
    count = people_modify count, people
    count += direction
    count = people_modify count, people
  end
  count
end
