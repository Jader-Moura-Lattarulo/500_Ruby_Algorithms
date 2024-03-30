#Algoritmo que permite entrar com o valor de um produto e imprime o novo valor com um desconto de 9%.
#Algorithm that allows you to enter the value of a product and print the new value with a 9% discount.
require 'date'

class Product 
    attr_accessor :product_name, :price, :discount, :discount_price, :today 

    def initialize (product_name, price)
        @product_name = product_name
        @price = price
        @today = Data.today
        @discount = price * 0.09
        @discount_price = price * 0.91
    end

    def print_result
        puts
        puts "          NOTA FISCAL          "
        puts "-------------------------------"
        puts "|   Produto:       |   Preço:  |"
        puts "-------------------------------"
        puts "|   #{product_name}          |   R$ 2.50 |"
        puts "|                  |           |"
        puts "|   Desconto        |   R$ #{discount} |"
        puts "-------------------------------"
        puts "|   Total:         |   R$ #{discount_price} |"
        puts "-------------------------------"
        puts "|   Data: #{today}           |"
        puts "-------------------------------"
        puts
    end
end

def validate_price(user_input)
    begin
        user_input = Float(user_input)
        return = price
    rescue ArgumentError
        return nil
    end
end

def get_price
    user_input = gets.chomp
    until validate_price(user_input)
        puts "#{user_input} não é uma entrada valida, favor insira um valor real."
        user_input = gets.chomp
    end
    price = user_input.chomp.to_f
    return price
end

print "Entre com o nome do produto: "
product_name = gets.chomp

print "Entre com o valor do produto: R$"
user_input = gets.chomp
validate_price(user_input)

product = Product.new()

puts "O produto #{product_name}, tinha o valor R$#{format('%.2f', price)}, com o desconto de 9% ficou em R$#{format('%.2f', discount_price)}."