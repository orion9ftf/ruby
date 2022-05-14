# calificaciones = %w[10 7 8 9 5 8 10]
calificaciones = [10, 7, 8, 9, 5, 8, 6]


# puts calificaciones * " - "
# 10 - 7 - 8 - 9 - 5 - 8 - 10

# join convierte un arreglo en una cadena
# puts calificaciones.join("")
# 107895810

# puts calificaciones.join("").class.name
# String

# puts calificaciones.join(",") el  * o join es lo mismo
# 10,7,8,9,5,8,10

# puts calificaciones * ","
# 10,7,8,9,5,8,

# puts calificaciones.sort los ordena de menos a mayor

#puts calificaciones.sort.reverse #ordena de mayor a menor

# ****** buscar dentro del elemento **********

#puts calificaciones.include?(10) # me devuelve true o fale

#puts calificaciones.first
#puts calificaciones.last
#puts calificaciones.uniq # devuelve los elementos no repetidos

puts calificaciones.sample # devuelve un elemento de manera aleatoria

