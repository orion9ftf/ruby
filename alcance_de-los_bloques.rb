def saludo
  yield
end

nombre = "Ana"
#saludo {puts "hola #{nombre}"}

saludo do
  #puts nombre
  nombre = "Juan"
  #puts "hola #{nombre}"
end

###################################
def despedida
  yield('Patricia')
end

despedida do |nombre2; apellido|
  desp = "hasta luego #{nombre2}"
  apellido = "Solis"
  puts desp +" #{apellido}"
end

