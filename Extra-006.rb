#Algoritmo 051 com definição de métodos

def perimeter (radius)
    return 2 * Math::PI * radius
end

def area (radius)
    return Math::PI * radius ** 2
end

print "Digite o raio: "
radius = gets.chomp.to_f.round(2)

puts "Perimetro: #{perimeter(radius).round(2)}"
puts "Area: #{area(radius).round(2)}"