#Algoritmo que entra com nome e idade e entrega o nome e a idade.

class Person
    attr_accessor :name, :age

    def initialize (name, age)
        @name = name
        @age = age
    end
        
    def print_data
        puts
        puts "+-+-+-+-+-+-+-+-+-+"
        puts "Nome = #{name}"
        puts
        puts "Idade = #{age}"
        puts "+-+-+-+-+-+-+-+-+-+"
    end
end

def valid_name
    loop do
        print "Digite o nome: "
        name = gets.chomp

        return name if name =~ /^[a-zA-Z]+$/ && name.length > 3

        puts "Nome inválido. O nome deve conter apenas letras e no mínimo 3 caracteres."
    end
end

def valid_age
    loop do
        print "Digite a idade: "
        age = gets.chomp.to_i

        return age if age > 0 && age < 150

        puts "Idade inválida. A idade deve conter apenas números e ser de 1 até 150 anos."
    end
end

name = valid_name
age = valid_age


person = Person.new(name, age)

person.print_data