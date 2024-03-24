#Testando Hierarquia

puts "Vamos resolver as seguintes equações para testar as hierarquias:"
puts "Número01 + Número02 / Número03"
puts "(Número01 + Número02) / Número03"

puts "Defina os números:"
print "Número01: "
numero01 = gets.chomp.to_i
print "Número02: "
numero02 = gets.chomp.to_i
print "Número03: "
numero03 = gets.chomp.to_i

    while numero03 == 0
        puts "O Número03 não pode ser 0 (zero), favor insira um valor valido."
        print "Número03: "
        numero03 = gets.chomp.to_i
    end 

resultado01 = numero01+numero02/numero03
resultado02 = (numero01+numero02)/numero03

puts "#{numero01} + #{numero02} / #{numero03} = #{resultado01}"
puts "(#{numero01} + #{numero02})/ #{numero03} = #{resultado02}"
puts "Portanto, divisões tem hierarquia maior do que somas ou subtrações."
puts

puts "Vamos resolver as seguintes equações para testar as hierarquias:"
puts "Número01 ** Número02 / Número03"
puts "Número01 ** (Número02 / Número03)"

puts "Defina os números:"
print "Número01: "
numero01 = gets.chomp.to_i
print "Número02: "
numero02 = gets.chomp.to_i
print "Número03: "
numero03 = gets.chomp.to_i

    while numero03 == 0
        puts "O Número03 não pode ser 0 (zero), favor insira um valor valido."
        print "Número03: "
        numero03 = gets.chomp.to_i
    end 

resultado01 = numero01.pow(numero02)/numero03
resultado02 = numero01.pow(numero02/numero03)

puts "#{numero01} ** #{numero02} / #{numero03} = #{resultado01}"
puts "#{numero01} **(#{numero02} / #{numero03}) = #{resultado02}"
puts "Portanto, potenciação tem hierarquia maior do que multiplicações ou divisões."
puts

