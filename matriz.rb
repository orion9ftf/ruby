require 'matrix'

matriz = Matrix[[1, 2, 3], [4, 5, 6], [7, 8, 9]]

matriz.each do |i|
  #puts i 
end

### matriz diagonal ###
matriz_2 = Matrix[[1, 0, 0], [0, 2, 0], [0, 0, 3]]
puts matriz_2.diagonal? # true
