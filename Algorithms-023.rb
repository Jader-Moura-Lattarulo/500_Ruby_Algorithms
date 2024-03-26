#Obtendo a dezena

print "Digite um número com três casas: "
number = gets.chomp.to_i
set_of_ten = (number % 100) /10

puts "A dezena de #{number} é #{set_of_ten}"