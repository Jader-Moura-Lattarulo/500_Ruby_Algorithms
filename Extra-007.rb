itens = ["caneta", "chaveiro", "garrafa", "camisa", "livro", "mochila"]
contador = 1

print "Quantos números você quer imprimir? "
quantidade = gets.chomp.to_i

quantidade.times do
  puts "#{contador} - #{itens[(contador - 1) % itens.length]}"
  contador += 1
end
