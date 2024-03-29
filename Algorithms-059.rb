#Algoritmo que entra com os valores dos catetos de um triângulo retângulo e imprimir a hipotenusa.
#Algorithm that enters the values ​​of the legs of a right-angled triangle and prints the hypotenuse.

class RightTriangle
    attr_accessor :cathetus01, :cathetus02, :hypotenuse

    def initialize (cathetus01, cathetus02)
        @cathetus01 = cathetus01
        @cathetus02 = cathetus02
        @hypotenuse = Math.sqrt (cathetus01 ** 2 + cathetus02 ** 2)
    end

    def print_result
        puts
        puts "+~^~^~^~^~^~^~^~^~^~^~+"
        puts 
        puts "A hipotenusa é: #{@hypotenuse.round(2)}"
        puts 
        puts "+~^~^~^~^~^~^~^~^~^~^~+"
    end
end

def validate_side(side)
    begin
        side = Float(side)
        return side
    rescue ArgumentError
        return nil
    end
end

def get_side
    side = gets.chomp
    until validate_side(side)
        puts "#{side.inspect} não é um número, pfv insira um valor válido: "
        side = gets.chomp
    end
    return side.to_f
end

print "Entre com o 1º cateto: "
cathetus01 = validate_side(get_side)
 
print "Entre com o 2º cateto: "
cathetus02 = validate_side(get_side)

right_triangle = RightTriangle.new(cathetus01, cathetus02)
right_triangle.print_result