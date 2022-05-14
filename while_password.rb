puts 'ingresa tu password'
contador = 0
password = "password"
mi_pass = gets.chomp

while mi_pass.downcase != password && contador < 2
  puts 'tu contaseña es incorrecta'
  puts 'ingresa tu password'
  mi_pass = gets.chomp
  contador += 1
end