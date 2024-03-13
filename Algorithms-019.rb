print "Qual número você quer utilizar para as funções numéricas? "
user_input = gets.chomp.to_i

def numeric_functions(input)
    puts "Raiz: #{Math.sqrt(input)}"

    real_int = (Math.power(1/2.0, Math.log(input))).to_i
    puts "Raiz com exponencial, log e conversão de real para inteiro: #{real_int}"

    puts "Raiz com exponencial e log, sem conversão de real para inteiro: #{(Math.exp(1/2.0 * Math.log(input)))}"

    
end

numeric_functions(user_input)