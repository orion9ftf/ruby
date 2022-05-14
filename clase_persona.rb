class Persona
  attr_accessor :nombre, :edad

  def saludar
    puts "Hola soy #{nombre}"
  end
end


class Doctora
  attr_accessor :codigo

  def recetar
    puts "Tiene que comprar la pildora del ahorro"
  end
end

pepa = Persona.new
pepa.nombre = "Pepa"
pepa.saludar

nicole = Doctora.new
nicole.codigo = '345678'
nicole.nombre = "Nicole"
nicole.codigo
nicole.recetar
