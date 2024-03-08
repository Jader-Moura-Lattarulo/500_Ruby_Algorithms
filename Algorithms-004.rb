#Final de semana

puts "Olhar a previsão do tempo"
print "Está sol? s/n"

user_answer = gets.chomp.downcase

if user_answer == 's'
    sol = true
else
    sol = false
end

if sol
    puts "Vou à praia."
else
    puts "Vou estudar."
end

puts "Almoçar."
puts "Ver televisão."
puts "Dormir."