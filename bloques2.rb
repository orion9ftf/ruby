# bloques de código
[1,2,3,4,5,6,7,8,9].each do |number|
  #puts number
end

# bloques de código inline
#(1..10).each {|number| puts number}

# bloque número y posición
[1,2,3,4].each_with_index do |number, pos|
  #puts "número: #{number} => posición: #{pos}"
end

# ejecutar un bloque con números impares
impares = [1,2,3,4,5,6,7].select do |number|
  number % 2 != 0
end
#puts impares

# el bloque anterior se podría hacer de manera inline
impares = [1,2,3,4,5,6,7].select {|number| number%2 != 0}
puts impares
