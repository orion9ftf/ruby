# la cadena no se puede modificar en tiempo de ejecucion

cadena = "eva"

cadena.capitalize!

puts cadena # Eva
# esto no modificara el string original
# cadena = cadena.capitalize! esto es lo mismo que: cadena.capitalize!

cadena1 = "Canasta"
cadena2 = "Canasta"

simbolo = :Cafe
simbolo2 = :Cafe

puts cadena1.object_id # 47223255604960
puts cadena2.object_id # 47223255604900

puts simbolo.object_id # 1049828
puts simbolo2.object_id # 1049828


if simbolo == simbolo2 
    puts "son iguales"
end

if cadena1 == cadena2
    puts "son iguales"
end

# cuando puedo utilizar un simbolo
# cuando no necesito modificar el string
#   cuando no necesito los metodos del string
#   los simbolos se usan como nombres de cosas