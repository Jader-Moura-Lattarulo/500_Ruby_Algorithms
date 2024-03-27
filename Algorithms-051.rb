#entrar com o raio de um círculo e imprimir o perimetro e a area

print "Digite o raio: "
radius = gets.chomp.to_f.round(2)

perimeter = 2 * Math::PI * radius
area = Math::PI * radius ** 2

puts "Perimetro: #{perimeter.round(2)}"
puts "Area: #{area.round(2)}"