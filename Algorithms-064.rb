#Ler uma temperatura em graus centígrados e apresentá-la convertida em graus
#.
#,
#- ,
#9.c+160
#Fahrenheit. A formula de conversão e:F =
#onde F e a temperatura em
#Fahrenheit e C é a temperatura em centígrados.

print "Digite a temperatura em graus centigrados: "
centigrados = gets.chomp.to_f

fahrenheit = (9 * centigrados + 160)/5

puts " O valor da temperatura em graus fahrenheit é: #{fahrenheit}"