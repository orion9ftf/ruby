# cuando la nota es mayor a 10 o menor que 1, debe no evaluar la condición:

puts 'Bienvenido a la evaluación final'
puts 'Ingresa tu nota:'
nota = gets.chomp.to_i

if nota > 10 || nota < 1
  puts 'Nota incorrecta :('
else
  if nota > 7
    puts "Su nota es #{nota} está Aprobada"
  elsif nota > 6
    puts "Su nota es: #{nota} las viste"
  elsif nota > 5
    puts "Su nota es #{nota} debe dar exámen"
  else
    puts "Su nota es #{nota} está Reprobado"
  end
end