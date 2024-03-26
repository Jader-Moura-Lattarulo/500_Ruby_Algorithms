=begin
    Antes de o racionamento de energia ser decretado, quase ninguém falava em
    quilowatts; mas, agora, todos incorporaram essa palavra em seu vocabulário.
    Sabendo-se que 100 quilowatts de energia custa um sétimo do salário mínimo,
    fazer um algoritmo que receba o valor do salário mínimo e a quantidade de quilowatts
    gasta por uma residência e calcule.
    Imprima: 
    * O valor em reais de cada quilowatt
    * O valor em reais a ser pago
    * O novo valor a ser pago por essa residência com um desconto de 10%
=end

print "Entre com o salário mínimo atual: R$"
minimum_wage = gets.chomp.to_f.round(2) 

one_hundred_kilowatt_cost = minimum_wage / 7
kilowatt_cost = one_hundred_kilowatt_cost / 100

print "Entre com a quantidade de quilowatts que foram consumidos: "
number_of_kilowatts = gets.chomp.to_i

energy_bill = kilowatt_cost * number_of_kilowatts
discounted_energy_bill = energy_bill * 0.9

puts "O preço do quilowatt é de: R$#{kilowatt_cost.round(2)}, a conta é de: R$#{energy_bill.round(2)}, com desconto ficou em: R$#{discounted_energy_bill.round(2)}"