def hola
  yield
end

#hola {puts "hola!!"}

hola do
  suma = 1 + 2
  #puts suma
end

def adios
  yield # if block_given?
end

#adios { puts "adiosin!!" }

def saludo(nombre, &bloque)
  bloque.call
  puts nombre
end

saludo("Ewi") { puts "hola" }

def saludo_2(nombre, &bloque)
  h = bloque.call
  puts "#{h} #{nombre}"
end
saludo("Ann") { puts "hola" }

