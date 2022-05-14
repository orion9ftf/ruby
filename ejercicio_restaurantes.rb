=begin
Primera parte

A través de un programa de Ruby, crea una carpeta llamada “restaurantes”. En dicha carpeta debes crear dos archivos (“los_rollos_primavera.txt” y “pizzas_ruby.txt”), y en cada archivo debe aparecer la información relacionada a cada restaurante:

Los Rollos Primavera 
Cerrada de las Jacarandas #18 
Abierto de Lunes a viernes de 9 a.m. a 6 p.m. 
Tel.: 55-22-54-15

Pizzas Ruby 
Av. de la tecnología #247 
Abierto de Lunes a Domingo de 8 a.m. a 10 p.m. 
Tel.: 35-45-79-99

Cada dato debe ir en su propia línea. No olvides cerrar los archivos cuando terminas de trabajar en ellos (método “close”). 

Segunda parte

Una vez que hayas terminado el programa de la primera parte y todo funcione correctamente, has que el programa lea los archivos e imprima en pantalla únicamente la cuarta línea de cada archivo (el teléfono). Recuerda comentar el código de la primera parte para que no genere errores, pues una vez creado la carpeta va a generar un error al tratar de crearlo de nuevo (o alternativamente borra la carpeta y los archivos cada vez que desees correr el programa de nuevo).

Reto adicional

Muchas veces necesitamos extraer solo una parte de una cadena de caracteres. Por ejemplo dada la siguiente cadena de caracteres:

nombre = “Juan Pérez”

Podríamos obtener el nombre de pila de la siguiente manera:

pila = nombre[0..3]

Y la variable pila solo contendría “Juan”. Hemos hecho uso de un rango para indicar que solo queremos los caracteres del cero al tres.

De este mismo modo al final del programa de restaurantes imprime únicamente el teléfono en pantalla (excluyendo “Tel.: ”).
=end





# Dir.mkdir("restaurantes")

# archivo = File.new("./restaurantes/los_rollos_primavera.txt", "w")
# archivo.puts('Cerrada de las Jacarandas #18 ')
# archivo.puts('Abierto de Lunes a viernes de 9 a.m. a 6 p.m.')
# archivo.puts('Tel.: 55-22-54-15')
# archivo.close

# archivo = File.new("./restaurantes/pizzas_ruby.txt", "w")
# archivo.puts('Av. de la tecnología #247')
# archivo.puts('Abierto de Lunes a Domingo de 8 a.m. a 10 p.m.')
# archivo.puts('Tel.: 35-45-79-99')
# archivo.close

# arreglo = File.readlines("./restaurantes/pizzas_ruby.txt")
#   puts arreglo[3]

arreglo = File.readlines("./restaurantes/los_rollos_primavera.txt")
puts arreglo[3] [5..16]

arreglo = File.readlines("./restaurantes/pizzas_ruby.txt")
puts arreglo[3] [5..16]