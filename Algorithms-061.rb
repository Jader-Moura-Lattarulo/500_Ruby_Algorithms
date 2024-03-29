#Algoritmo para entrar com uma razão de uma progressão geométrica e o valor do 1º termo. Ele calcula e imprime o 5º termo da série.
#Algorithm to enter an geometric progression ratio and the value of the 1st term. It calculates and prints the 5th term of the series.

class GeometricProgression
    attr_accessor :first_term, :ratio, :fifth_term

    def initialize (first_term, ratio)
    
    end
end


print "Entre com o 1º termo: "
first_term = gets.chomp.to_i

print "Entre com a razão: "
ratio = getes.chomp.to_i

fifth_term = first_term * ratio ** 4

puts "O 5º termo desta P.G. é: #{fifth_term}"