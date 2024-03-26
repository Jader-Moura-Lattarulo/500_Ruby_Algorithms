#Algoritmo 25 - Otimizado

print "Digite a data no formato dd/mm/aaaa: "
date = gets.chomp

day = date[0, 2]
month = date[3, 2]
year = date[6, 4]

puts "DIA: #{day}"
puts "MÊS: #{month}"
puts "ANO: #{year}"