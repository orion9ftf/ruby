puts 'Presiona un número para escuchar:'
puts '[1] Pop', '[2] Rock', '[3] Alternativa', '[#] Salir'
tipo = gets.chomp.to_i

puts case tipo
when 1
  'escogiste Pop'
when 2
  'escogiste Rock'
when 3
  'escogiste Alternativa'
else
  'Salir'
end
