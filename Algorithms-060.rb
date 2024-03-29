#Algoritmo para entrar com uma razão de progressão aritimética e o valor do 1º termo. Ele calcula e imprime o 10º termo da série.
#Algorithm to enter an arithmetic progression ratio and the value of the 1st term. It calculates and prints the 10th term of the series.

class ArithmeticProgression
    attr_accessor :first_term, :ratio, :tenth_term 

    def initialize(first_term, ratio)
        @first_term = first_term
        @ratio = ratio
        @tenth_term = first_term + 9* ratio
    end

    def print_result
        puts
        puts "+-^-^-^-^-^-^-^-^-^-^-+"
        puts 
        puts "O 10º termo desta P.A. é: #{@tenth_term}"
        puts 
        puts "+-^-^-^-^-^-^-^-^-^-^-+"
    end
end

def validate_number(number)
    begin
        number = Integer(number)
        return number
    rescue ArgumentError
        return nil
    end
end

def get_number
    number = gets.chomp
    until validate_number(number)
        puts "#{number.inspect} não é uma entrada válida, favor insira um número inteiro: "
        number = gets.chomp
    end
    return number.to_i
end

print "Entre com o 1º termo: "
first_term = validate_number(get_number)

print "Entre com a razão: "
ratio = validate_number(get_number)

arithmetic_progression = ArithmeticProgression.new(first_term, ratio)
arithmetic_progression.print_result