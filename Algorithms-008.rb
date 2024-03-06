names = File.read('Algorithms-008.txt').split(',').map(&:strip)

if names.empty?
    puts "O arquivo está vazio. Não há nomes para sortear."
else
    name_drawn = names.sample

    puts "Nome sorteado: #{name_drawn}"
end
