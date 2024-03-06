puts "Pegue os ingredientes."
print "Você está de roupa branca? s/n "
user_answer = gets.chomp.downcase

if user_answer == 's'
    roupa_branca = true
else
    roupa_branca = false
end

if roupa_branca
    puts "Colocar avental."
end

print "Você tem batedeira? s/n "
user_answer = gets.chomp.downcase

if user_answer == 's'
    mixer = true
else
    mixer = false
end

if mixer 
    puts "Bater os ingredientes na batedeira."
else
    puts "Bater os ingredientes na mão."
end

puts "Colocar a massa na forma."
puts "Colocar a forma no forno."
puts "Aguardar o tempo necessário."
puts "Retirar o bolo."