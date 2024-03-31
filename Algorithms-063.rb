#Algoritmo que efetua o cálculo do salário líquido de um professor. Os dados fornecidos serão: valor da hora aula, número de aulas dadas no mês, hora atividade, adicional noturno caso a aula passe das 22h e percentual de desconto do INSS.
#Algorithm that calculates a teacher's net salary. The data provided will be: hourly class fee, number of classes given in the month, activity time, additional night time if the class goes beyond 10pm and SSA discount percentage.

print "Insira as horas trabalhadas: "
worked_hours = gets.chomp.to_f

print "Insira o valor da hora-aula: "
hourly_wage = gets.chomp.to_f

print "Insira o valor de horas após 22h: "
hours_after_10pm = gets.chomp.to_f

additional_night = hours_after_10pm * hourly_wage * 0.25

gross_salary = (worked_hours * hourly_wage) + additional_night

case gross_salary
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
    inss = 1100 * 0.075
    count = (2203.48 - 1100) * 0.09
    inss = inss + count
    count = (gross_salary - 2203.48) * 0.12
    inss = inss + count
    puts "#{inss}"
    puts "#{gross_salary - inss}"
when 3305.23..6433.57
    puts "faixa 04: 14%"
    puts "#{gross_salary}"
    inss = 1100 * 0.075
    count = (2203.48 - 1100) * 0.09
    inss = inss + count
    count = (3305.22 - 2203.48) * 0.12
    inss = inss + count
    count = (gross_salary - 3305.23) * 0.14
    inss = inss + count
    puts "#{inss}"
    puts "#{gross_salary - inss}"
else
    puts "Outro regime"
end