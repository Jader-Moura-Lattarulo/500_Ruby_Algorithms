#Entrar com a base e a altura de um retângulo e imprimir a saída de perimetro, área e diagonal

print "Entre com a base do retângulo: "
base = gets.chomp.to_f

print "Entre com a altura do retângulo: "
height = gets.chomp.to_f

perimeter = 2*(base + height)
area = base * height
diagonal = Math.sqrt(base ** 2 + height ** 2)

puts "Perimetro: #{perimeter}"
puts "Area: #{area}"
puts "Diagonal: #{diagonal}"