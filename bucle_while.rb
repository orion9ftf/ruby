# El bucle while nos permitirá ejecutar código múltiples veces mientras que la condición que brindemos sea verdadera.

contador = 0

while contador < 3
  #puts "El contador es: #{contador}"
  contador += 1
end


#### password ####
# ingresar la contraseña
# máx de intentos [3]

puts "ingresa tu password"
contador = 0
password = "helloworld"
mi_pass = gets.chomp

while mi_pass.downcase != password && contador < 3
  puts "tu contraseña es incorrecta"
  puts "ingresa tu password"
  mi_pass = gets.chomp 
  contador += 1
end


