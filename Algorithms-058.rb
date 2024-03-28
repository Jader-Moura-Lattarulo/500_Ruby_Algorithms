#Entre com valores para 3 números e imprima o valor de x, sabendo-se que: x = xnum1 + xnum2/(xnum3 + xnum1) + 2(xnum1 - xnum2) + log2⁶⁴

class Resolution
    def initialize(xnum1, xnum2, xnum3)
        @xnum1 = xnum1
        @xnum2 = xnum2
        @xnum3 = xnum3
    end

    def calculate_x
        x = @xnum1 + @xnum2/(@xnum3 + @xnum1) + (2 * @xnum1) - (2 * @xnum2) + Math.log(64,2)
        return x
    end
end

print "Entre com o 1º valor: "
xnum1 = gets.chomp.to_f

print "Entre com o 2º valor: "
xnum2 = gets.chomp.to_f

print "Entre com o 3º valor: "
xnum3 = gets.chomp.to_f

resolution = Resolution.new(xnum1, xnum2, xnum3)
result = resolution.calculate_x

puts "O valor de X é: #{result.round(2)}"