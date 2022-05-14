# def saludar
#   puts "hola!"
#   yield
#   puts "fin del método"
#   yield
# end

# saludar {puts "dentro del bloque"}

# def saludar(nombre)
#   puts "hola #{nombre}!"
#   yield
#   puts "fin del método"
#   yield
# end

# saludar('Juanita') {puts "dentro del bloque"}


# def saludar(nombre)
#   puts "hola #{nombre}!"
#   yield
#   puts "fin del método"
#   yield
# end

# saludar('Juanita') do 
#   puts "dentro del bloque con yield"
#   puts "otra linea de bloque con yield"
# end



def saludar(nombre)
  yield('Pedro')
  puts "hola #{nombre}!"
end

saludar('Juanita') do |x|
  puts "dentro del bloque con yield #{x}"
end