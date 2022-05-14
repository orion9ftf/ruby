=begin
Ejercicio: Temperatura promedio
El siguiente arreglo representa las temperaturas de cada día de la semana pasada (grados centígrados):

temperaturas = [24,30,29,32,24,30,31]
Crea un programa que calcule la temperatura promedio de toda la semana, a partir de los valores del arreglo.
=end

temperaturas = [24,30,29,32,24,30,31]

promedio = temperaturas.sum / temperaturas.size.to_f

puts promedio.round(1)
