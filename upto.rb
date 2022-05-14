10.upto(12) do |i|
  #puts i
end


### desde y hasta con min y max

puts "ingrese el valor minimo"
minimo = gets.chomp.to_i
puts "ingrese un valor máximo"
maximo = gets.chomp.to_i 
suma = 0

minimo.upto(maximo) do |i|
  suma += i
end

puts "la suma del valor minimo al máximo ingresado es: #{suma}"