#Descascar batatas

puts "Pegar faca, bacia e as batatas."
puts "Coloque água na bacia."
print "Quantas batatas você ira descascar? "
potatoes = gets.chomp.to_i

peeled_potatoes = 1

while peeled_potatoes <= potatoes
    print "Descanando a #{peeled_potatoes}ª batata."
    sleep(1)
    print "."
    sleep(1)
    puts "."
    sleep(1)

    peeled_potatoes += 1
end

puts "#{potatoes} batatas descascadas!"