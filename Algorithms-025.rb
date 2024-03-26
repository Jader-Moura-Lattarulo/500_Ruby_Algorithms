print 'Digite data no formato ddmmaa: '
date = gets.chomp.to_i

day = date/10000
month = (date % 10000) /100
year = date % 100

puts "DIA: #{day}"
puts "MÊS: #{month}"
puts "ANO: #{year}"