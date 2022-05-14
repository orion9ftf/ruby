puts 'Ingresa una posición entre 1 y 3'
posicion = gets.chomp.to_i

if posicion > 3 || posicion <= 0
  'íngresa un numero entre 1 y 3'
else
  if posicion == 3
    puts 'ganaste  lk'
  elsif posicion == 2
    puts 'ganaster 2 lk'
  else
    puts 'ganaste 10 lk'
  end
end

#### Lo mismo pero con Switch
if posicion > 3 || posicion <= 0
  'íngresa un numero entre 1 y 3'
else
  puts case posicion
  when 3
    'ganaste lk'
  when 2
    'ganaste 2 lk'
  else
    'ganaste 10 lk'
  end
end
