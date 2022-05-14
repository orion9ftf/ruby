=begin
def saludo
  yield
end

nombre = "Olga"
saludo { puts "hola #{nombre}" } # Olga

saludo do
  nombre = "Alice"
  puts "Hola #{nombre}" # se reasigna el nombre
end

puts nombre # Alice
=end

################################
=begin
def despedida
  yield('Josefa')
end

despedida do |nombre|
  puts "hasta luego #{nombre}"
end
=end

################################
def despedida
  yield('Josefa')
end

despedida do |nombre, apellido|
  desp = "hasta luego #{nombre}"
  apellido = "Vivanco"
  puts "#{desp} #{apellido}"
end