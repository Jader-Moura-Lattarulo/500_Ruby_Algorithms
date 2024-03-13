puts "O que você quer por em um arquivo texto?"
user_input = gets.chomp

output_file = File.open("Extra-003.txt","a")
$stdout = output_file
$stdout.puts user_input
$stdout = STDOUT 
output_file.close

file = File.open("Extra-003.txt", "r")
file.each_line do |line|
    puts line
end
file.close