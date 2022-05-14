class Automovil
    # atributos
    def initialize(color, marca)
      @color = color 
      @marca = marca
    end


    # metodos
    def partir
      puts "el #{@marca} se ha encendido"
    end

    # def color
    #   @color
    # end

    # def marca
    #   @marca
    # end

    def apagar
      puts "el #{@marca} se ha apagado"
    end
    
  attr_reader :color, :marca
  attr_writer :color, :marca
end

corvette = Automovil.new('negro cereza', 'chevrolet')
# corvette.partir
# corvette.apagar

camaro = Automovil.new('rojo caramelo', 'chevrolet')
# camaro.partir
# camaro.apagar

# puts camaro.class # Automovil


nombre = 'ewi'
# puts (nombre.instance_of? String) # true
# puts corvette.object_id # te entrega el id del objeto consultado
puts corvette.marca
puts corvette.color
corvette.marca = 'toyota'
puts corvette.marca