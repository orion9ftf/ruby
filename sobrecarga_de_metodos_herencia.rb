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
  def partir
    puts "El vehiculo de marca: #{@marca} se ha encendido"
  end

  def partir(seg)
    puts "El vehiculo ha partido en #{seg} segundos!"
  end
end

# objeto 1
corvette = Automovil.new('negro cereza', 'chevrolet')
puts corvette.partir(5)