=begin

Ejercicio: El área de un rectángulo
Crea un programa que le pida al usuario dos datos, la base y la altura de un rectángulo. Una vez teniendo los dígitos el programa debe llamar a un método que tome como parámetros la base y la altura y devuelva el área (a = b * h). Finalmente el programa debe imprimir en pantalla el resultado (ej.  “El área del rectángulo es: 24”)

Consejo: No olvides convertir la entrada del usuario de tipo cadena de caracteres a tipo numérico.z

=end

puts "Ingresa un número"
b = gets.chomp.to_f
puts "Ingresa otro número"
h = gets.chomp.to_f
a = b * h

puts "El resultado del área del rectángulo es: #{a} "

# def rectangulo(b)
#     a = b * h
#     b = gets.chomp.to_f
#     return a
# end 

# resultado = rectangulo