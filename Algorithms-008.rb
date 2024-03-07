names = File.read('Algorithms-008.txt').split(',').map(&:strip)

if names.empty?
    puts "O arquivo está vazio. Não há nomes para sortear."
else
    name_drawn = names.sample

    puts "Nome sorteado: #{name_drawn}"
end

name_array = name_drawn.chars

found_letters = Array.new(name_drawn.length, false)

while found_letters.include?(false)
    print "Digite uma letra: "
    letter_wanted = gets.chomp.downcase

    found_letter = false
    name_array.each_with_index do |letter, index|
        if letter.downcase == letter_wanted
            found_letters[index] = true
            found_letter = true
        end
    end

    if found_letter
        result = name_array.map.with_index do |letter, index|
            found_letters[index] ? letter: "_"
        end
        puts "Nome: #{result.join(" ")}"
    else
        puts "Letra não encontrada. Tente novamente."
        puts "Nome: #{result.join(" ")}"
    end
end

puts "Parabéns! Você encontrou todas as letras."