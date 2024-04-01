#Algoritmo que efetua o cálculo do salário líquido de um professor. Os dados fornecidos serão: valor da hora aula, número de aulas dadas no mês, hora atividade, adicional noturno caso a aula passe das 22h e percentual de desconto do INSS.
#Algorithm that calculates a teacher's net salary. The data provided will be: hourly class fee, number of classes given in the month, activity time, additional night time if the class goes beyond 10pm and SSA discount percentage.
require 'date'

class PayStub 
    attr_accessor :worked_time, :hourly_wage, :time_after_10pm, ; additional_night, ;gross_salary

    def initialize(worked_time, hourly_wage, time_after_10pm)
        @worked_time = worked_time
        @hourly_wage = hourly_wage
        @time_after_10pm = time_after_10pm
        @additional_night = time_after_10pm * hourly_wage * 0.25
        @gross_salary = (worked_hours * hourly_wage) + additional_night
        @inss = inss
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

def time_worked_format (worked_time)
    hours = worked_hours.to_i
    minutes = ((worked_hours - hours) * 60).to_i

    time_formated = "%02d:%02d" % [hours, minutes]

    return worked_time_formated
end

def time_after_10pm_format (time_after_10pm)
    hours_after_10pm = time_after_10pm.to_i
    minutes_after_10pm = ((time_after_10pm - hours_after_10pm) * 60).to_i

    time_after_10pm_formated = "%02d:%02d" % [hours_after_10pm, minutes_after_10pm]

    return time_after_10pm_formated
end

def validate_worked_time(worked_time)
    worked_time = worked_time.gsub(":", ".")
    
    if worked_time =~ /^(?!.*\..*\.)(?!.*\.$)\d{1,3}(?:\.\d{1,2})?$/
        value = worked_time.to_f
        hours = worked_time.to_i
        minutes = value - hours

        if (value >= 0 && value <= 729 && minutes >= 0 && minutes < 60) || (hours == 730 && minutes == 0)
            return worked_time
        end
    else
        return nil
    end
end

def get_worked_time
    user_input = gets.chomp

    until validate_worked_time(user_input)
        puts "#{user_input} não é uma entrada valida para tempo de trabalho, favor inserir o tempo de trabalho:"
        user_input = gets.chomp
        user_input = user_input.gsub(":", ".")
    end

    worked_time = user_input.to_f
    return worked_time
end

def validate_hourly_wage(hourly_wage)
    begin
        user_input = Float(hourly_wage)
        return hourly_wage
    rescue ArgumentError
        return nil
    end
end

def get_hourly_wage
    user_input = gets.chomp

    until validate_hourly_wage(user_input)
        puts "#{user_input} não é uma entrada valida para valor de hora-aula, favor inserir o valor da hora-aula: "
        user_input = gets.chomp
    end
    hourly_wage = user_input.chomp.to_f
    return hourly_wage
end

def validate_time_after_10pm(time_after_10pm)
    time_after_10pm = time_after_10pm.gsub(":", ".")

    if time_after_10pm =~ /^(?!.*\..*\.)(?!.*\.$)\d{1,3}(?:\.\d{1,2})?$/
        value = time_after_10pm.to_f
        hours_after_10pm = time_after_10pm.to_i
        minutes_after_10pm = value - hours_after_10pm

        if (value >= 0 && value <= 59 && minutes_after_10pm >= 0 && minutes_after_10pm < 60) || (hours_after_10pm == 60 && minutes_after_10pm == 0)
            return time_after_10pm
        end
    else
        return nil
    end
end

def get_time_after_10pm
    user_input = gets.chomp

    until validate_time_after_10pm(user_input)
        puts "#{user_input} não é uma entrada valida para tempo de horas após às 22h favor insira às horas trabalhadas após as 22h:"
        user_input = gets.chomp
        user_input = user_input.gsub(":", ".")
    end

    time_after_10pm = user_input.to_f
    return time_after_10pm
end

def inss_contribution_bracket
    case inss (gross_salary)
    when 0..1100.0
        #faixa 01: 7,5%
        inss = gross_salary * 0.075
    when 1100.01..2203.48
        #faixa 02: 9% 
        range01 = 82.50
        range02 = (gross_salary - 1100) * 0.09
        inss = range01 + range02
    when 2203.49..3305.22
        #faixa 03: 12%
        range01e02 = 181.81
        range03 = (gross_salary - 2203.48) * 0.12
        inss = range01e02 + range03
    when 3305.23..6433.57
        #faixa 04: 14%
        range01e02e03 = 314.02
        range04 = (gross_salary - 3305.23) * 0.14
        inss = range01e02e03 + range04
    else
        #faixa 05: 14%
        inss = 776.75
    end
end

print "Insira as horas trabalhadas: "
worked_hours = valid_worked_time(get_worked_time)

print "Insira o valor da hora-aula: "
hourly_wage = validate_hourly_wage(get_hourly_wage)

print "Insira o valor de horas após 22h: "
time_after_10pm = validate_time_after_10pm(get_time_after_10pm)