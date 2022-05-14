# una matriz es un arreglo de dos dimensiones
# tienes que tener la misma cantidad de datos
# todos los elementos deben ser numeros

require 'matrix'

matriz = Matrix[[1, 2, 3], [4, 5, 6], [7, 8, 9]]

matriz.each do |i|
  #puts i 
end

=begin
1 2 3
4 5 6
7 8 9
=end

# valor de la diagonal
matriz.each(:diagonal) do |i|
  #puts i # 1 5 9
end

# valor de encima de la diagonal:
matriz.each(:strict_upper) do |i|
  #puts i # 2 3 6
end


# valor por debajo de la diagonal:
matriz.each(:strict_lower) do |i|
  #puts i 
end


# evaluando si es diagonal:
puts matriz.diagonal?


# evaluando una matriz con diagonal:
matriz2 = Matrix[[1, 0, 0],[0, 2, 0],[0, 0, 3]]
puts matriz2.diagonal?
