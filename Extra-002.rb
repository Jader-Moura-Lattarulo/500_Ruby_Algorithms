#Verificador de palíndromos

def palindrome?(text)
    processed_text = text.downcase.gsub(/\s+/, '')
    processed_text == processed_text.reverse
end

print "Entre com a palavra ou frase para verificar se é um palíndromo: "
user_input = gets.chomp

puts "#{user_input.reverse}"

if palindrome?(user_input)
    puts "#{user_input} é um palindromo!"
else
    puts "#{user_input} não é um palindromo."
end