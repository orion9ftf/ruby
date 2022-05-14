# pretamos = {
#   :juan => "el señor de los anillo",
#   :alice => "el origen",
#   :pedro => "conspiración"
# }


# otra forma de escribir los simbolos:
pretamos = {
  juan: "el señor de los anillo",
  alice:  "el origen",
  pedro:  "conspiración"
}

pretamos[:laura] = "fortaleza digital" # create
puts pretamos[:juan] # read
pretamos[:alice] = "Alicia en el país de las maravillas" # update
pretamos.delete(:juan) # delete
puts pretamos

"hola".to_sym # cuando el usuario ingresa cadena de caracteres y necesito guardarlos en un hash, con .to_sym
