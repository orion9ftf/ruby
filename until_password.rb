puts 'ingresa tu password'
mi_pass = gets.chomp
pass = "password"
intentos = 0

# !(mi_pass.downcase != password && intentos < 2)
until mi_pass.downcase == pass || intentos == 2
  puts 'ingresa tu password'
  mi_pass = gets.chomp
  intentos += 1
end
