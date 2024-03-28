#Entrar com as notas das provas 1 e 2 e imprimir a média final, arredondada e real

class Test
    attr_accessor

    def initialize (test01,test02)
        @test01 = test01
        @test02 = test02
    end

    def print_results
        puts
        puts "+~^~^~^~^~^~^~^~^~^~^~+"
        puts "Média Real = #{}"
        puts
        puts "Média Arredondada = #{}"
        puts "+~^~^~^~^~^~^~^~^~^~^~+"
    end
end

def valid_grade
    print "Digite a nota que tirou na primeira prova: "
    grade01 = gets.chomp.to_f

    if grade01 >= 0.00 && grade01 <= 10.00
    return test01 if grade01 >= 0.00 && grade01 <= 10.00
    
    puts "Nota inválida, a nota deve ser entre 0 e 10, por favor insira uma nota valida."

    print "Digite a nota que tirou na segunda prova: "
    grade02 = gets.chomp.to_f

    return test01 if grade01 >= 0.00 && grade01 <= 10.00
    
    puts "Nota inválida, a nota deve ser entre 0 e 10, por favor insira uma nota valida."
end

test01, test02 = valid_grade

test = Test.new(test01,test02)
test.print_results