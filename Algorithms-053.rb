# Entrar com os lados de um paralelepípedo, calcular a diagonal.

def diagonal_of_parallelepiped(height, base, depth)
    return Math.sqrt( height ** 2 + base ** 2 + depth ** 2 )
end

print "Entre com a altura: "
height = gets.chomp.to_f.round(2)

print "Entre com a base: "
base = gets.chomp.to_f.round(2)

print "Entre com a profundidade: "
depth = gets.chomp.to_f.round(2)

puts "Diagonal do paralelepípedo é: #{diagonal_of_parallelepiped(height, base, depth).round(2)}"