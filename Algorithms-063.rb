#Algoritmo que efetua o cálculo do salário líquido de um professor. Os dados fornecidos serão: valor da hora aula, número de aulas dadas no mês, hora atividade, adicional noturno caso a aula passe das 22h e percentual de desconto do INSS.
#Algorithm that calculates a teacher's net salary. The data provided will be: hourly class fee, number of classes given in the month, activity time, additional night time if the class goes beyond 10pm and SSA discount percentage.

print "Insira as horas trabalhadas: "
worked_hours = gets.chomp.to_f

print "Insira o valor da hora-aula: "
hourly_wage = gets.chomp.to_f

print "Insira o valor de horas após 22h: "
hours_after_10pm = gets.chomp.to_f

additional_night = hours_after_10pm * hourly_wage * 0.25

gross_salary = (worked_hours * hourly_wage) + (additional_night) 