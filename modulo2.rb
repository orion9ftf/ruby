puts "Ingresa un número"

numero = ARGV[0].to_i

# if numero % 2 == 0 
#   puts "El número es par"
# else
#   puts "El número es impar"
# end

puts numero % 2 == 0? "El número es par" : "El número es impar"
