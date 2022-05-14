
# alumnos = ["Juan", "Maria", "Laura", "Fran", 12, true]
# puts alumnos[3] # Fran


### Modificcamos el arreglo original:

alumnos2 = ["Juan", "Maria", "Laura", "Fran", 12, true]

alumnos2[0] = "Camila" # esto reemplazará el índice cero que es "Juan"
alumnos2.push("Juanita") # la agrega al final
alumnos2.unshift("Ana") # nos agrega el valor al inicio
alumnos2.delete_at(2) # elimina de acuerdo al indice entregado

puts  alumnos2

