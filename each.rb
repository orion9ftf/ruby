# ciclo each (es un iterador)

calificaciones = %w[10 7 8 9 4 9 10 6]

suma = 0

calificaciones.each do |calificacion|
    #puts "ahora vale: #{calificacion}"
end

# posicion en la que nos encontramos dentro del arreglo

calificaciones.each_with_index do |calificacion, posicion|
    #puts "En la posicion #{posicion} vale: #{calificacion}"
end


# promedio

calificaciones.each_with_index do |calificacion, posicion|
    suma += calificacion.to_i
end

puts "El promedio de tus calificaciones es #{suma / calificaciones.length}"
# suma.to_f


#puts calificaciones