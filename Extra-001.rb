# Desenho de um triângulo no console em Ruby

def draw_triangle(lines)
    lines.times do |i|
      spaces = ' ' * (lines - i - 1)
      stars = '*' * (2 * i + 1)
      puts "#{spaces}#{stars}"
    end
end
  
print "Digite o número de linhas para o triângulo: "
number_lines = gets.chomp.to_i
  
draw_triangle(number_lines)
  