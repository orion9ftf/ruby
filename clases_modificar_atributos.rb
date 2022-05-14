# class Vehiculo

#   def initialize(modelo, color)
#     @modelo = modelo
#     @color = color
#   end

#   def avanzar
#     puts "el vehiculo está en movimiento"
#   end 

#   def color
#     @color
#   end

#   def modelo
#     @modelo
#   end

# end

# auto = Vehiculo.new("Corvette", "rojo")
# auto.avanzar
# puts auto.color
# puts auto.modelo


######## modificar el valor de color y modelo

# class Vehiculo

#   def initialize(modelo, color)
#     @modelo = modelo
#     @color = color
#   end

#   def avanzar
#     puts "el vehiculo está en movimiento"
#   end 

#   def color
#     @color
#   end

#   def color=(color)
#     color
#   end

#   def modelo
#     @modelo
#   end

#   def modelo=(modelo)
#     @modelo
#   end

# end


# auto = Vehiculo.new("Corvette", "rojo")
# auto.avanzar
# puts auto.color = "negro"
#puts auto.color


##### attr_accessor

class Vehiculo
  attr_accessor :modelo, :color # modelo y color, son las variables que van a estar accesibles

  def initialize(modelo, color)
    @modelo = modelo
    @color = color
  end

  def avanzar
    puts "el vehiculo está en movimiento"
  end 

end


auto = Vehiculo.new("Corvette", "rojo")
auto.avanzar
puts auto.color = "negro"