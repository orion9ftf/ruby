# El bucle until nos permitirá ejecutar código múltiples veces mientras que la condición que brindemos sea falsa.

puts "ingresa tu contraseña"

mi_pass = gets.chomp
password = "hola"
intentos = 0

until mi_pass.downcase == password || intentos < 2
  puts "ingresa tu contraseña"
  mi_pass = gets.chomp
  intentos += 1
end
