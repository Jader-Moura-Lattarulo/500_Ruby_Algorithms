#Algoritmo que entra com os valores dos catetos de um triângulo retângulo e imprimir a hipotenusa.

class RightTriangle
    attr_accessor :cathetus01, :cathetus02, :hypotenuse

    def initialize (cathetus01, cathetus02, hypotenuse)
        @cathetus01 = cathetus01
        @cathetus02 = cathetus02
        @hypotenuse = Math.sqrt (cathetus01 ** 2 + cathetus02 ** 2)
    end

    def print_results(hypotenuse)
        puts
        puts "+~^~^~^~^~^~^~^~^~^~^~+"
        puts 
        puts "A hipotenusa é: #{hypotenuse.round(2)}"
        puts 
        puts "+~^~^~^~^~^~^~^~^~^~^~+"
    end
end

def validate_side(side)
    if side.is_a?(Float)
        return side
    else
        puts "#{side} não é um número, pfv insira um valor válido: "

print "Entre com o 1º cateto: "
cathetus01 = gets.chomp.to_f

print "Entre com o 2º cateto: "
cathetus02 = gets.chomp.to_f