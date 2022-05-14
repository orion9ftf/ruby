30.downto(10) do |i|
  #puts i
end

puts "ingrese el valor minimo"
minimo = gets.chomp.to_i
puts "ingrese un valor máximo"
maximo = gets.chomp.to_i 
suma = 0

maximo.downto(minimo) do |i|
  suma += i
  puts suma
end

puts "la suma del valor minimo al máximo ingresado es: #{suma}"
