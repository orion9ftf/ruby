# los simbolos pueden ser similar a las cadenas de caracteres, a diferencia de estos ellos no cambian su valor (inmutables)

usuario_1 = {
  "nombre" => "Pepa", 
  "genero" => "ambiguo", 
  "edad" => 18
}
puts usuario_1["nombre"]

usuario_2 = {
  :nombre => "Pepa", 
  :genero => "ambiguo", 
  :edad => 18
}

puts usuario_2[:nombre] # Pepa

# las cadenas de caracteres ocupan mas memoria que los simbolos