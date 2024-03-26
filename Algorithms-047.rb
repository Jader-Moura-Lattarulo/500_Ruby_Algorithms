#Entrar com um número no formato CDU e imprimir invertido: UDC.

print "Entre com um número de 3 dígitos: "
number = gets.chomp.to_i

number01 = number / 100
number02 = (number % 100) /10
number03 = number % 10

rebmun = number03*100 + number02*10 + number01

puts "O número: #{number}"
puts "O número invertido: #{rebmun}"