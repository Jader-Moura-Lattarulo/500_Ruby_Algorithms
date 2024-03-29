#Algoritmo para entrar com uma razão de uma progressão geométrica e o valor do 1º termo. Ele calcula e imprime o 5º termo da série.
#Algorithm to enter an geometric progression ratio and the value of the 1st term. It calculates and prints the 5th term of the series.

class GeometricProgression
    attr_accessor :first_term, :ratio, :fifth_term

    def initialize (first_term, ratio)
        @fifth_term = fifth_term
        @ratio = ratio
        @fifth_term = first_term * ratio ** 4
    end

    def print_result
        puts
        puts "+-*-*-*-*-*-*-*-*-*-*-+"
        puts 
        puts "O 5º termo desta P.G. é: #{fifth_term}"
        puts
        puts "+-*-*-*-*-*-*-*-*-*-*-+"
        puts         
    end
end

def validate_integer(number)
    begin
        user_input = Integer(number)
        return number
    rescue ArgumentError
        return nil
    end
end

def get_number
    user_input = gets.chomp
    until validate_integer(user_input)
        puts "#{user_input.inspect} não é uma entrada válida, favor insira um número inteiro: "
        user_input = gets.chomp
    end
    number = user_input.to_i 
    return number
end

print "Entre com o 1º termo: "
first_term = validate_integer(get_number)

print "Entre com a razão: "
ratio = validate_integer(get_number)

geometric_progression = GeometricProgression.new(first_term, ratio)
geometric_progression.print_result