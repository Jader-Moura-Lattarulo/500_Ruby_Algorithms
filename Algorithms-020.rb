def concatenate(user_input_01, user_input_02)
    concat = user_input_01 + user_input_02
    puts "Concatenando com armazenamento: #{concat.upcase}"
end

def copy(user_input_01)
    copy_input = user_input_01.clone
    puts "A variavel copy_input recebeu o valor: #{copy_input}"
end

def first_char(user_input_01, user_input_02)
    concat = user_input_01 + user_input_02
    first_char = concat[0].upcase
    puts "Primeira letra da palavra concatenada é: #{first_char}"
end

def last_char(user_input_01, user_input_02)
    concat = user_input_01 + user_input_02
    last_char = concat[-1].upcase
    puts "Primeira letra da palavra concatenada é: #{last_char}"
end

def all_but_first(user_input_01, user_input_02)
    concat = user_input_01 + user_input_02
    all_but_first = concat[1..-1].upcase
    puts "Todos menos o primeiro: #{all_but_first}"
end

def third_element(user_input_01, user_input_02)
    concat = user_input_01 + user_input_02
    third_element = concat[2]
    puts "O terceiro elemento é: #{third_element}"
end

def first_three_el(concatenated)
    first_three_el = concatenated[0..2].upcase
    puts "Os três primeiros elementos: #{first_three_el.upcase}"
end

def last_three_el(concatenated)
    last_three_el = concatenated[-3..-1].upcase
    puts "Os três últimos elementos: #{last_three_el.upcase}"
end

print "Digite a primeira palavra: "
user_input_01 = gets.chomp

print "Digite a segunda palavra: "
user_input_02 = gets.chomp

puts "O tamanho da primeira palavra é: #{user_input_01.length}"

puts "A concatenação sem armazenamento é: #{user_input_01.upcase + user_input_02.upcase}"

concatenated = (user_input_01 + user_input_02).upcase

copy(user_input_01)

first_char(user_input_01, user_input_02)

last_char(user_input_01, user_input_02)

all_but_first(user_input_01, user_input_02)

third_element(user_input_01, user_input_02)

first_three_el(concatenated)

last_three_el(concatenated)