def concatenate(user_input_01, user_input_02)
    concat = user_input_01 + user_input_02
    puts "Concatenando com armazenamento: #{concat.upcase}"
end

def copy(user_input_01)
    copy_input = user_input_01.clone
    puts "A variavel copy_input recebeu o valor: #{copy_input}"
end

def first_char(concat)
    concat[0]
    print "Primeira letra da palavra concatenada é: #{concat.upcase[0]}"
end

print "Digite a primeira palavra: "
user_input_01 = gets.chomp

print "Digite a segunda palavra: "
user_input_02 = gets.chomp

puts "O tamanho da primeira palavra é: #{user_input_01.length}"

puts "A concatenação sem armazenamento é: #{user_input_01.upcase + user_input_02.upcase}"

concatenate(user_input_01, user_input_02)

copy(user_input_01)