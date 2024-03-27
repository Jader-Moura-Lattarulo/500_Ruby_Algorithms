#Algoritmo qeu calcula a area de um losango

def area_of_rhombus(major_diagonal, minor_diagonal) 
    return (major_diagonal * minor_diagonal)/2
end

print "Medida da diagonal maior: "
major_diagonal = gets.chomp.to_f.round(2)

print "Medida da diagonal menor: "
minor_diagonal = gets.chomp.to_f.round(2)

puts "A area do losango é: #{area_of_rhombus(major_diagonal, minor_diagonal).round(2)}"