=begin
class Profesor
  def initialize(nombre)
    @nombre = nombre
  end

  def get_nombre
    @nombre
  end

  def set_nombre(nombre)
    @nombre = nombre
  end 
end

pedro = Profesor.new("Pedro")
#pedro.set_nombre('Javier')
puts pedro.get_nombre
=end

#############  lo mismo pero sin explícitamente getters y setters ################
=begin
class Profesor
  def initialize(nombre)
    @nombre = nombre
  end

  def nombre
    @nombre
  end

  def nombre=(nombre)
    @nombre = nombre
  end
end

pedro = Profesor.new('Pedro')
pedro.nombre = 'Jorge'
puts pedro.nombre
=end

######## forma simplificada ########
class Profesor
  # attr_accessor -setter y getter
  # attr_reader - getter
  # attr_writer - setter
  attr_accessor :nombre, :edad

  def initialize(nombre,edad)
    @nombre = nombre
    @edad = edad
  end
end

pedro = Profesor.new('Pedro', 22)
pedro.nombre = 'Jorge'
pedro.edad = 20
puts pedro.nombre
puts pedro.edad