class Vehiculo
    # atributos
  def initialize(color, marca)
    @color = color 
    @marca = marca
  end

  # metodos
  public
    def partir
        puts "el #{@marca} se ha encendido"
    end
  private
    def apagar
        puts "el #{@marca} se ha apagado"
    end
end

# objeto 1
corvette = Vehiculo.new('negro cereza', 'chevrolet')
puts corvette.partir
puts corvette.apagar
