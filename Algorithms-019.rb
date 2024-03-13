print "Qual número você quer utilizar para as funções numéricas? "
user_input = gets.chomp.to_i

def format(number, decimal_places)
    return sprintf("%.#{decimal_places}f", number)
end

def pow (base, exp)
    result = base ** exp
    return result
end
    
def numeric_functions(input)

    pi = Math::PI

    puts "Raiz: #{Math.sqrt(input)}"

    real_int = (Math.exp(1/2.0 * Math.log(input))).to_i
    puts "Raiz com exponencial, log e conversão de real para inteiro: #{real_int}"

    puts "Raiz com exponencial e log, sem conversão de real para inteiro: #{(Math.exp(1/2.0 * Math.log(input)))}"

    puts "#{format(Math.sin(45*pi/180)+ 0.0001,3)}"

    puts "Potência com exp, log e formatar: #{format(Math.exp(3*Math.log(8))+0.0001,3)}"

    puts "Potência com operador ** e formatar: #{format(pow(8,3)+0.0001,3)}"

    puts "Raiz cubica: #{Math.exp(1/3*Math.log(8))}"

    puts "Absoluto: #{(-8).abs}"

    puts "Absoluto: #{(8).abs}"

    puts "convertendo para inteiro 5.5: #{5.5.to_i}"

    puts "convertendo para inteiro 6.5: #{6.5.to_i}"

    puts "convertendo para inteiro 6.5 + 0.0001: #{(6.5+0.0001).to_i}"

    puts "Convertendo para real 87: #{87.to_f}"

    puts "Convertendo para inteiro 3/4: #{(3/4).to_i}"
end

numeric_functions(user_input)