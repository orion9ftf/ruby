
paises = [
    "México", 
    "Chile", 
    "Japón", 
    "Alemania", 
    "Canadá", 
    "Perú"
]

puts paises.size # 6
puts paises.length # 6
puts paises.count # 6
puts paises.first # México
puts paises.last # Perú
puts paises.empty? # le decimos si esta vacio, nos devuelve un: false
puts paises.include?("Chile") # true

paises.push("Bolivia") # lo agrega al final del array
paises << "Argentina" # lo agrega al final del array

puts paises
