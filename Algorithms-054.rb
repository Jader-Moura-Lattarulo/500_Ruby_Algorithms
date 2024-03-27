#Algoritimo que calcula e imprime a area de um triângulo.

def clear_console
    system('clear') || system('cls')
end

def validate_measurements(base_of_triangle, height_of_triangle)
    if base_of_triangle == 0 || height_of_triangle == 0
        clear_console
        puts "A area só pode ser calculada com valores positivos."
        puts "Insira valores validos."
        get_measurements
    end
    area_of_triangle(base_of_triangle, height_of_triangle)
    return base_of_triangle, height_of_triangle
end

def area_of_triangle(base_of_triangle, height_of_triangle)
    return (base_of_triangle * height_of_triangle)/2
end

def get_measurements
    print "Entre com a base do triangulo: "
    base_of_triangle = gets.chomp.to_f.round(2)

    print "Entre com a altura do triangulo: "
    height_of_triangle = gets.chomp.to_f.round(2)

    validate_measurements(base_of_triangle, height_of_triangle)
end

base_of_triangle, height_of_triangle = get_measurements

puts "A area de um triangulo de base #{base_of_triangle} e altura #{height_of_triangle} é de #{area_of_triangle(base_of_triangle, height_of_triangle).round(2)}"