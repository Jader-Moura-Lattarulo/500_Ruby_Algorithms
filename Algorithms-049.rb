#Entrar com um nome e imprimir:

print "Entre com um nome: "
name = gets.chomp

puts "Todo nome: #{name}"
puts "Primeira letra: #{name[0]}"
puts "Última letra: #{name[-1]}"
puts "Da primeira até a terceira letra: #{name[0.. 2]}"
puts "A quarta letra: #{name[3]}"
puts "Todas menos a primeira letra: #{name[1.. -1]}"
puts "As duas últimas letras: #{name[-2.. -1]}"