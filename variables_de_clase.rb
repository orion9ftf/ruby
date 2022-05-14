class Persona
  attr_accessor :genero
  @@num_personas = 0
  
  def initialize(genero)
    @genero = genero
    @@num_personas += 1
    puts Persona.num_personas
  end

  def self.num_personas
    @@num_personas
  end
end


class Empleado < Persona
  attr_accessor :identificador, :nivel

  def initialize(genero, identificador, nivel)
    super(genero)
    @identificador = identificador
    @nivel = nivel
  end

  def acerca #método de instancia
    puts "Este empleado es de género #{genero} con identificador #{identificador} y tiene un nivel de #{nivel}"
  end

  def self.calcular_finiquito(salario)
    salario * 2
  end
end

empleado1 = Empleado.new("femenino", "Add76367", 3)
empleado1.acerca
puts Empleado.calcular_finiquito(2000)

empleado2 = Empleado.new("masculino", "NCHCUDH77655", 2)
empleado2.acerca
puts Empleado.calcular_finiquito(1300)
