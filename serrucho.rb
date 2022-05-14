#se tiene un arreglo con número los cuales deben ser ordenados en forma de serrucho.


#[0-9]{2}) En lo que siga a esta expresión, se va a validar que exista un número de al menos dos dígitos


num = [2, 4, 66, 44, 22, 1, 5, 6, 88, 7]

resultado = num.sort
puts resultado
puts "********************"


print (resultado.map{ |i| i.to_i }).join(',')
puts "********************"

#sacar de los primeros
menor = resultado.shift
#sacar de los últimos números
mayor = resultado.pop
puts "********************"

#push
a = resultado.push(menor)
b = resultado.push(mayor)
puts a, b
