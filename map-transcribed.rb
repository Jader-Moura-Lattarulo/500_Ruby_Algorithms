class Array
    def my_map(&block)
      result = []
      self.each { |item| result << block[item] }
      result
    end
  
    def my_each(&block)
      self.each { |item| block[item] }
      self
    end
  
    def my_length
      self.each.with_index.count { |_,i| true }
    end
  end
  
  numbers = [1, 2, 3, 4, 5]
  
  doubled_numbers = numbers.my_map { |number| number * 2 }
  puts doubled_numbers # [2, 4, 6, 8, 10]
  
  squared_numbers = []
  numbers.my_each { |number| squared_numbers << number * number }
  puts squared_numbers # [1, 4, 9, 16, 25]
  
  puts numbers.my_length # 5