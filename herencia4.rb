class Vehiculo
    # atributos
  def initialize(color, marca)
    @color = color 
    @marca = marca
  end

  # metodos
  def partir
    puts "el #{@marca} se ha encendido"
  end

  def apagar
    puts "el #{@marca} se ha apagado"
  end
end


class Automovil < Vehiculo

end

class Motocicleta < Vehiculo
  def partir
    puts "La #{@marca} se ha encendido"
  end

end

class Autobus < Vehiculo
  def partir
    puts "El Autobus de marca #{@marca} se ha encendido"
  end
end


# objeto 1
corvette = Automovil.new('negro cereza', 'chevrolet')
puts corvette.partir

# objeto 2
harley = Motocicleta.new('negro', 'harley')
puts harley.partir

# objeto 3
mercedes = Autobus.new('blanco', 'mercedes')
puts mercedes.partir
