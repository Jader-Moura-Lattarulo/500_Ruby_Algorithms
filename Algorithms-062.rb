#Algoritmo que permite entrar com o valor de um produto e imprime o novo valor com um desconto de 9%.
#Algorithm that allows you to enter the value of a product and print the new value with a 9% discount.
require 'date'

class Product 
    attr_accessor :product_name, :price, :discount, :discount_price, :today 

    def initialize (product_name, price)
        @product_name = product_name
        @price = price
        @today = Date.today.strftime("%d/%m/%Y")
        @discount = price * 0.09
        @discount_price = price * 0.91
    end

    def print_result
        puts
        puts "O protuto #{product_name} tinha o valor R$#{format('%.2f', price)}, mas com o desconto de 9% passa a valer R$#{format('%.2f', discount_price)}"
        puts "Boas compras!"
        puts
        puts "---------------------------------"
        puts "|         NOTA FISCAL           |"
        puts "|-------------------------------|"
        puts "|   Produto:\t|   Preço:  \t|"
        puts "|-------------------------------|"
        puts "|   #{product_name}\t|   R$ #{format('%.2f', price)}\t|"
        puts "|           \t|           \t|"
        puts "|   Desconto\t|   R$ #{format('%.2f', discount)}\t|"
        puts "|-------------------------------|"
        puts "|   Total:\t|   R$ #{format('%.2f', discount_price)}\t|"
        puts "|-------------------------------|"
        puts "|   \tData: #{today}\t|"
        puts "---------------------------------"
        puts
        puts "Obrigado por comprar no Jader Shopping!"
    end
end

def product_validate
    loop do
        print "Entre com o nome do produto: "
        product_name = gets.chomp

        return product_name if product_name =~ /^[a-zA-Z]+$/ && product_name.length > 3
        puts "Produto inválido, o nome do Produto não pode começar com número e deve ter no mínimo 4 letras." 
    end
end

def validate_price(price)
    begin
        user_input = Float(price)
        return price
    rescue ArgumentError
        return nil
    end
end

def get_price
    user_input = gets.chomp
    until validate_price(user_input)
        puts "#{user_input.inspect} não é uma entrada valida, favor insira um valor real."
        user_input = gets.chomp
    end
    price = user_input.chomp.to_f
    return price
end

product_validate

print "Entre com o valor do produto: R$"
price = validate_price(get_price) 

product = Product.new(product_name, price)
product.print_result