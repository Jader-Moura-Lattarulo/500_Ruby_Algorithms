#Algoritmo que efetua o cálculo do salário líquido de um professor. Os dados fornecidos serão: valor da hora aula, número de aulas dadas no mês, hora atividade, adicional noturno caso a aula passe das 22h e percentual de desconto do INSS.
#Algorithm that calculates a teacher's net salary. The data provided will be: hourly class fee, number of classes given in the month, activity time, additional night time if the class goes beyond 10pm and SSA discount percentage.

require 'date'

class PayStub 
    attr_accessor :worked_time, :hourly_wage, :time_after_10pm, :additional_night, :gross_salary, :inss, :net_salary 

    def initialize(worked_time, hourly_wage, time_after_10pm, additional_night)
        @worked_time = worked_time
        @hourly_wage = hourly_wage
        @time_after_10pm = time_after_10pm
        @additional_night = additional_night
        @gross_salary = calculate_gross_salary
        @inss = inss_contribution_bracket
        @net_salary = @gross_salary - @inss
    end

    def print_pay_stub
        puts
        puts "-----------------------------------------"
        puts "|           \t HOLERITE               |"
        puts "|---------------------------------------|"
        puts "|   Descrição\t\t|   Valor:  \t|"
        puts "|---------------------------------------|"
        puts "|   Horas Trabalhadas\t|   #{format('%.2f', worked_time)}\t|"
        puts "|           \t\t|           \t|"
        puts "|   Adicional Noturno\t|   R$ #{format('%.2f', additional_night)}\t|"
        puts "|           \t\t|           \t|"
        puts "|   Salário Bruto\t|   R$ #{format('%.2f', gross_salary)}\t|"
        puts "|           \t\t|           \t|"
        puts "|   INSS\t\t| - R$ #{format('%.2f', inss)}\t|"
        puts "|---------------------------------------|"
        puts "|   Salário Líquido:\t|   R$ #{format('%.2f', net_salary)}\t|"
        puts "|---------------------------------------|"
        puts "|   \t\tData: #{Date.today}\t|"
        puts "-----------------------------------------"
        puts
    end

    private

    def calculate_gross_salary
        (worked_time * hourly_wage) + additional_night
    end

    def inss_contribution_bracket
        gross_salary = calculate_gross_salary
        case gross_salary
        when 0..1100.0
            #faixa 01: 7,5%
            gross_salary * 0.075
        when 1100.01..2203.48
            #faixa 02: 9% 
            ((gross_salary - 1100) * 0.09) + 82.50
        when 2203.49..3305.22
            #faixa 03: 12% 
            ((gross_salary - 2203.48) * 0.12) + 181.81
        when 3305.23..6433.57
            #faixa 04: 14%
            ((gross_salary - 3305.23) * 0.14) + 314.02
        else
            #faixa 05: 14%
            776.75
        end
    end
end

def validate_worked_time(worked_time)
    if worked_time =~ /^(?!.*\..*\.)(?!.*\.$)\d{1,3}(?:\.\d{1,2})?$/
        value = worked_time.to_f
        hours = worked_time.to_i
        minutes = value - hours

        if (value >= 0 && value <= 729 && minutes >= 0 && minutes < 60) || (hours == 730 && minutes == 0)
            return worked_time.to_f
        end
    end
    nil
end

def get_worked_time
    user_input = gets.chomp

    until (worked_time = validate_worked_time(user_input))
        puts "#{user_input} não é uma entrada valida para tempo de trabalho, favor inserir o tempo de trabalho:"
        user_input = gets.chomp
    end

    worked_time
end

def validate_hourly_wage(hourly_wage)
    Float(hourly_wage) if hourly_wage.to_f > 0 rescue nil
end

def get_hourly_wage
    user_input = gets.chomp

    until (hourly_wage = validate_hourly_wage(user_input))
        puts "#{user_input} não é uma entrada valida para valor de hora-aula, favor inserir o valor da hora-aula: "
        user_input = gets.chomp
    end

    hourly_wage
end

def validate_time_after_10pm(time_after_10pm)
    if time_after_10pm =~ /^(?!.*\..*\.)(?!.*\.$)\d{1,3}(?:\.\d{1,2})?$/
        value = time_after_10pm.to_f
        hours_after_10pm = time_after_10pm.to_i
        minutes_after_10pm = value - hours_after_10pm

        if (value >= 0 && value <= 59 && minutes_after_10pm >= 0 && minutes_after_10pm < 60) || (hours_after_10pm == 60 && minutes_after_10pm == 0)
            return time_after_10pm.to_f
        end
    end
    nil
end

def get_time_after_10pm
    user_input = gets.chomp

    until (time_after_10pm = validate_time_after_10pm(user_input))
        puts "#{user_input} não é uma entrada valida para tempo de horas após às 22h favor insira às horas trabalhadas após as 22h:"
        user_input = gets.chomp
    end

    time_after_10pm
end

def calculate_additional_night(time_after_10pm, hourly_wage)
    time_after_10pm * hourly_wage * 0.25
end

print "Insira as horas trabalhadas: "
worked_time = get_worked_time

print "Insira o valor da hora-aula: "
hourly_wage = get_hourly_wage

print "Insira o valor de horas após 22h: "
time_after_10pm = get_time_after_10pm

additional_night = calculate_additional_night(time_after_10pm, hourly_wage)

paystub01 = PayStub.new(worked_time, hourly_wage, time_after_10pm, additional_night)
paystub01.print_pay_stub
