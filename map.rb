numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map { |number| number * 2 }
puts doubled_numbers # [2, 4, 6, 8, 10]

squared_numbers = []
numbers.each { |number| squared_numbers << number * number }
puts squared_numbers # [1, 4, 9, 16, 25]

puts numbers.length # 5