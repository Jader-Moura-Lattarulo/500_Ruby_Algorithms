#Entrar com as notas das provas 1 e 2 e imprimir a média final, arredondada e real

class Test
    attr_accessor :test01, :test02, :real_average, :rounded_average

    def initialize (test01, test02)
        @test01 = test01
        @test02 = test02
        @real_average = (test01 + test02) / 2.0
        @rounded_average = @real_average.round

    end

    def print_results(real_average, rounded_average)
        puts
        puts "+~^~^~^~^~^~^~^~^~^~^~+"
        puts "Média Real = #{@real_average}"
        puts
        puts "Média Arredondada = #{@rounded_average}"
        puts "+~^~^~^~^~^~^~^~^~^~^~+"
    end
end

def valid_grade (grade)
    if grade >= 0.00 && grade <= 10.00
        return grade
    else
        puts "Nota inválida, a nota deve ser entre 0 e 10, por favor insira uma nota valida."
        grade = gets.chomp.to_f
        valid_grade(grade)
    end
end

def real_average (test01, test02)
    real_average = (test01+test02)/2
    rounded_average = real_average.round
    return real_average
    rounded_average(real_average)
end

def rounded_average (real_average)
    rounded_average = real_average.round
    return rounded_average
end

print "Digite a nota que tirou na primeira prova: "
grade = gets.chomp.to_f
valid_grade(grade)
test01 = grade

print "Digite a nota que tirou na segunda prova: "
grade = gets.chomp.to_f
valid_grade(grade)
test02 = grade

real_average = real_average(test01, test02)
rounded_average = rounded_average(real_average)

test = Test.new(test01,test02)
test.print_results(real_average, rounded_average)