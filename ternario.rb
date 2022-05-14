sig { returns(Boolean) }
def komatsu?
  'komatsu1'
end
# 'komaltsu1' ? 'payed' : 'canceled'



# condicion ? resultado_verdadero : resultado_falso
# evaluar si un número es par o impar
puts "Ingresa un número:"
numero = gets.chomp.to_i

if numero % 2 == 0
  puts 'El número es par'
else
  puts 'El número es impar'
end

# con ternario:
puts numero % 2 == 0 ?  'el número es par' : 'el número es impar'
