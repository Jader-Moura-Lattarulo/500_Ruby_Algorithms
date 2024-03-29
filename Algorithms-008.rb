#Jogo da forca

names = File.read('Algorithms-008.txt').split(',').map(&:strip)

def draw_hangman(errors)
    hangman_parts = [
        "      +---+\n      |   |\n          |\n          |\n          |",
        "      +---+\n      |   |\n      O   |\n          |\n          |",
        "      +---+\n      |   |\n      O   |\n      |   |\n          |",
        "      +---+\n      |   |\n      O   |\n     /|   |\n          |",
        "      +---+\n      |   |\n      O   |\n     /|\\  |\n          |",
        "      +---+\n      |   |\n      O   |\n     /|\\  |\n     /    |",
        "      +---+\n      |   |\n      O   |\n     /|\\  |\n     / \\  |"
    ]
    puts hangman_parts[errors]
end

def clear
    system("clear") || system("cls")
end

if names.empty?
    puts "O arquivo está vazio. Não há nomes para sortear."
else
    name_drawn = names.sample

    puts "Nome sorteado: #{name_drawn}"
end

name_array = name_drawn.chars

found_letters = name_array.map { |letter| letter == ' ' }
errors = 0

while found_letters.include?(false) && errors < 6
    puts "\nPalavra: #{name_array.map { |letter| found_letters[name_array.index(letter)] ? letter : '_' }.join(' ')}"
    puts "errors: #{errors}"

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
        clear
        puts "Nome: #{result.join(" ")}"
    else
        clear
        draw_hangman(errors)
        puts "O nome não possui a letra #{letter_wanted.inspect}. Tente novamente."
        result = name_array.map.with_index do |letter, index|
            found_letters[index] ? letter: "_"
        end
        puts "Nome: #{result.join(" ")}"
        errors += 1
    end
end

if errors >= 6
    clear
    draw_hangman(errors)
    puts "Você perdeu! O nome correto era: #{name_drawn}"
else   
    clear
    puts "Parabéns! Você ganhou! O nome era: #{name_drawn}"
end