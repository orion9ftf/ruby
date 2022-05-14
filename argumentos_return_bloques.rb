# class Usuario
#   attr_accessor :nombre

#   def saludar
#     yield(@nombre)
#   end
# end

# ewi = Usuario.new

# ewi.nombre = "Ewi"

# ewi.saludar { |nombre| puts "Hola #{nombre}" }
# ewi.saludar { |nombre| puts "Hello #{nombre}" }
# ewi.saludar { |nombre| puts "こんにちは #{nombre}" }
# ewi.saludar { |nombre| puts "Ciao #{nombre}" }


########## El bloque puede retornar un valor #############

class Usuario
  attr_accessor :nombre

  def saludar_with
    saludo = yield(@nombre)
    puts saludo
  end
end

ewi = Usuario.new

ewi.nombre = "Ewi"

ewi.saludar_with { |nombre| "Hola #{nombre}" }
ewi.saludar_with { |nombre| "Hello #{nombre}" }
ewi.saludar_with { |nombre| "こんにちは #{nombre}" }
ewi.saludar_with { |nombre| "Ciao #{nombre}" }

ewi.saludar_with do |nombre| 
  saludo = "Hello #{nombre}"
end