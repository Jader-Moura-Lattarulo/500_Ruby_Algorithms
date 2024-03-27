#Entrar com o lado de um quadrado e imprimir o perimetro, area e diagonal

def perimeter_of_square(side)
    return 4 * side
end

def area_of_square(side)
    return side ** 2
end

def diagonal_of_square(side)
    return side * Math.sqrt(2)
end

print "Digite o lado do quadrado: "
side = gets.chomp.to_f.round(2)

puts "Perimetro: #{perimeter_of_square(side).round(2)}"
puts "Area: #{area_of_square(side).round(2)}"
puts "Diagonal: #{diagonal_of_square(side).round(2)}"