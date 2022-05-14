# pasarle un bloque de código:
def hola
  yield
end

#hola {puts "holaaa!"}

hola do
  suma = 1 + 5 
  #puts suma
end


def adios
  yield # if block_given? #cuando no le pasamos un bloque a ejecutar
end

#adios {puts "adios!!"}

def saludo nombre, &bloque
  bloque.call
  #puts nombre
end

#saludo("Ana") {puts "buenos dias"}


# Almacenar el valor de bloque en una variable:
def saludo nombre, &bloque
  hello = bloque.call
  puts hello + " #{nombre}"
end

saludo("Ana") {"buenos dias"}
