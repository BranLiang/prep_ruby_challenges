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
  count = 0
  (1..num).each do |x|
    count += direction
    count = people_modify count, people
    direction = switch_direction direction if x.divisible_by_7?
    count += direction if (x-1).divisible_by_11? && x != 1
    count = people_modify count, people
    puts "#{count}, #{x}"
  end
  count
end
