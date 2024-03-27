#Algoritmo qeu calcula a area de um losango

def get_measurements
    print "Medida da diagonal maior: "
    major_diagonal = gets.chomp.to_f.round(2)

    print "Medida da diagonal menor: "
    minor_diagonal = gets.chomp.to_f.round(2)

    validate_measurements(major_diagonal, minor_diagonal)
end

def validate_measurements(major_diagonal,minor_diagonal)
    if major_diagonal < minor_diagonal
        puts "A medida da diagonal maior deve ser MAIOR que a medida da diagonal menor."
        get_measurements
    end
    area_of_rhombus(major_diagonal, minor_diagonal)
    return major_diagonal, minor_diagonal
end

def area_of_rhombus(major_diagonal, minor_diagonal) 
    return (major_diagonal * minor_diagonal)/2
end

major_diagonal, minor_diagonal = get_measurements

puts "A area do losango é: #{area_of_rhombus(major_diagonal, minor_diagonal).round(2)}"