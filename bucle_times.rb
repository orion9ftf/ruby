1..30.times do |i|
  #puts i
end


##### otro ejemplo #####
puts "ingresa un número"
#numero = ARGV[0].to_i
numero = gets.chomp.to_i
suma = 0

numero.times do |i| 
  suma += i
end

puts suma