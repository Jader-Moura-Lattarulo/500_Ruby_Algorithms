#Algoritmo que efetua o cálculo do salário líquido de um professor. Os dados fornecidos serão: valor da hora aula, número de aulas dadas no mês, hora atividade, adicional noturno caso a aula passe das 22h e percentual de desconto do INSS.
#Algorithm that calculates a teacher's net salary. The data provided will be: hourly class fee, number of classes given in the month, activity time, additional night time if the class goes beyond 10pm and SSA discount percentage.
require 'date'

class PayStub 
    attr_accessor :worked_time, :hourly_wage, :hours_after_10pm, ; additional_night, ;gross_salary

    def initialize(worked_time, hourly_wage, hours_after_10pm)
        @worked_time = worked_time
        @hourly_wage = hourly_wage
        @hours_after_10pm = hours_after_10pm
        @additional_night = hours_after_10pm * hourly_wage * 0.25
        @gross_salary = (worked_hours * hourly_wage) + additional_night
    end

    def print_pay_stub
        puts
        puts "---------------------------------"
        puts "|           HOLERITE            |"
        puts "|-------------------------------|"
        puts "|   Descrição\t|   Valor:  \t|"
        puts "|-------------------------------|"
        puts "|   Horas Trabalhadas\t|   #{format('%.2f', worked_hours)}\t|"
        puts "|           \t|           \t|"
        puts "|   Desconto\t|   R$ #{format('%.2f', discount)}\t|"
        puts "|-------------------------------|"
        puts "|   Total:\t|   R$ #{format('%.2f', discount_price)}\t|"
        puts "|-------------------------------|"
        puts "|   \tData: #{today}\t|"
        puts "---------------------------------"
        puts
    end
end

def time_format (valid_worked_time)
    case valid_worked_time
    when 0..1.59
    hours = worked_hours.to_i
    minutes = ((worked_hours - hours) * 60).to_i

    time_formated = "%02d:%02d" % [hours, minutes]

    return worked_hours_formated
end

def validate_worked_time
end

def get_worked_time
    user_input = gets.chomp
    user_input = user_input.gsub(":", ".")
    until validate_worked_time (user_input)
        puts "#{user_input} não é uma entrada valida para tempo de trabalho, favor inserir o tempo de trabalho:"
        user_input = gets.chomp
        user_input = user_input.gsub(":", ".")
    end
    worked_time = user_input.to_f
    return worked_time
end

def get_hourly_wage
end

def get_hours_after_10pm
end

print "Insira as horas trabalhadas: "
worked_hours = gets.chomp.to_f

print "Insira o valor da hora-aula: "
hourly_wage = gets.chomp.to_f

print "Insira o valor de horas após 22h: "
hours_after_10pm = gets.chomp.to_f

case inss (gross_salary)
when 0..1100.0
    puts "faixa 01: 7,5%"
    puts "#{gross_salary}"
    inss = gross_salary * 0.075
    puts "#{inss}"
    puts "#{gross_salary - inss}"
when 1100.01..2203.48
    puts "faixa 02: 9%" 
    puts "#{gross_salary}"
    inss = 1100 * 0.075
    count = (gross_salary - 1100) * 0.09
    inss = inss + count
    puts "#{inss}"
    puts "#{gross_salary - inss}"
when 2203.49..3305.22
    puts "faixa 03: 12%"
    puts "#{gross_salary}"
    inss = (1100 * 0.075) + (1103.48 * 0.09)
    count = (gross_salary - 2203.48) * 0.12
    inss = inss + count
    puts "#{inss}"
    puts "#{gross_salary - inss}"
when 3305.23..6433.57
    puts "faixa 04: 14%"
    puts "#{gross_salary}"
    inss = (1100 * 0.075) + (1103.48 * 0.09) + (1101.74 * 0.12)
    count = (gross_salary - 3305.23) * 0.14
    inss = inss + count
    puts "#{inss}"
    puts "#{gross_salary - inss}"
else
    puts "faxa 05: 14%"
    puts "#{gross_salary}"
    inss = (1100 * 0.075) + (1103.48 * 0.09) + (1101.74 * 0.12) + (3305.23 * 0.14)
    puts "#{inss}"
    puts "#{gross_salary - inss}"
end