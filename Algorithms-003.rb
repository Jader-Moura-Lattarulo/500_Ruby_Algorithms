puts "A lâmpada está fora de alcance? s/n"

user_answer = gets.chomp.downcase

if user_answer == 's'
    lamp_out_of_range = true
else
    lamp_out_of_range = false
end

if lamp_out_of_range
    puts "Pegar a escada e pegar a lâmpada."
else
    puts "Pegar a lâmpada."
end

puts "A lâmpada está quente? s/n"

user_answer = gets.chomp.downcase

if user_answer == 's'
    lamp_hot = true 
else
    lamp_hot = false
end

if lamp_hot
    puts "Pegar pano e tirar a lâmpada queimada."
else
    puts "Tirar lâmpada queimada."
end

puts "Colocar lâmpada boa."