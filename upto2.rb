10.upto(14) do |i|
  #puts i
end

# 10 11 12 13 14

########### ingresar un min y ax valor #########
#puts 'ingresa un valor minimo'
minimo = gets.chomp.to_i
#puts 'ingresa un valor maximo'
maximo = gets.chomp.to_i
#puts 'tus numeros son:'

minimo.upto(maximo) do |i|
  #puts i
end

######## sumar todos los números desde y hasta donde
#puts 'ingresa un valor:'
numero = gets.chomp.to_i
suma = 0
#puts 'la suma de todos los números son:'

numero.times do |i|
  suma += i
end
#puts suma


##### downto #####
10.downto(1) do |i|
  puts i 
end

##### downto #####
#puts 'ingresa un valor maximo'
maximo = gets.chomp.to_i
#puts 'ingresa un valor minimo'
minimo = gets.chomp.to_i
#puts 'tus numeros son:'

maximo.downto(minimo) do |i|
  #puts i
end
