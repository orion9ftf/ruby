puts "premio"
puts "ingresa una posición"
posicion = ARGV[0].to_i

if posicion > 3 || posicion <= 0
  print "ingresa una posivción cálida entre 0 - 3"
else
  puts case posicion
  when 3
    "ganaste $1000"
  when 2
    "ganaste $2000"
  else 1
    "ganaste $5000"
  end
end