# Rocola
# Tipos de música: Pop, Rock, Bachatas, Baladas

puts "::Bienvenido a la Rocola mágica::"
puts "Presiona un número para empezar"
puts "[1] Pop", "[2] Rock", "[3] Bachatas", "[4] Baladas", "[5] Salir"

tipo = ARGV[0].to_i

puts case tipo
when 1
  "elegiste pop"
when 2
  "elegiste rock"
when 3
  "elegiste bachatas"
when 4 
  "elegiste baladas"
else 5
  "elegiste salir"
end