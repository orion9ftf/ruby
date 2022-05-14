=begin
Dado el siguiente arreglo: 

hermanos = ["María", "José", "Pedro"]
Crea un programa que imprima en pantalla la siguiente oración: 

Éramos 3 hermanos, José era el mayor, María nuestra hermana consentida, y Pedro el más pequeño entre nosotros
Los nombres por supuesto deben provenir del arreglo.

=end

hermanos = ["María", "José", "Pedro"]

m = hermanos[0]
j = hermanos[1]
c = hermanos[2]

resul = m + j + c

puts resul = "Éramos tres hermanos, #{j} era el mayor, #{m} nuestra hermana consentida, y #{c} el más pequeño entre nosotros"


