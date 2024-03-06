require 'timeout'

puts "Leia a prova."
print "Quantas questões tem na prova? "
questions = gets.chomp.to_i

puts "Pegue a caneta."

answered_questions = 1
test_time = 60
start_time = Time.now

while answered_questions <= questions && Time.now - start_time <= test_time

    print "Você sabe a resposta? s/n "
    known_answer = gets.chomp.downcase

    if known_answer == 's'
        print "Resolvendo a questão."
        sleep(1)
        print "."
        sleep(1)
        puts "."
        sleep(1)
    
        answered_questions += 1
    else
        puts "Pulando para a próxima."
    end
end

if answered_questions >= questions
    puts "Você acabou, entregue a prova."
else
    puts "O tempo acabou, entregue a prova."
end